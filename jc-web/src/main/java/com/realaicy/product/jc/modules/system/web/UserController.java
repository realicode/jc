package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.common.aop.annotations.Perfable;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.model.UserSec;
import com.realaicy.product.jc.modules.system.repos.UserSecRepos;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/system/user")
public class UserController extends CRUDController<User, Long> {

    private UserService userService;
    static final String[] nameDic = {"username", "password", "nickname", "createTime"};
    static final List<String> bindingWhiteList = Arrays.asList("password");

    @Autowired
    public UserController(UserService userService) {
        super(userService, "user", nameDic);
        this.userService = userService;
    }

    @Autowired
    PasswordEncoder bcryptEncoder;

    @Autowired
    UserSecRepos userSecRepos;


    @RequestMapping(value = "/user", method = RequestMethod.GET)

    public String listUserPage() {
        return "system/user/user";
    }


    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newModel(Model model) {
        model.addAttribute("realmodel", new User());
        model.addAttribute("realneworupdate", "new");

        return "system/user/add";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(Model model) {
        return "system/user/search";
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String showModel(@PathVariable("id") final Long id, Model model) {
        model.addAttribute("realmodel", userService.findOne(id));
        model.addAttribute("realUpdateID", id);
        return "system/user/add";
    }

    @ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveModel(@Valid @ModelAttribute("realmodel") final User realmodel,
                            final BindingResult result, final ModelMap model,
                            @RequestParam(value = "updateflag", required = false) String updateflag,
                            @RequestParam(value = "updateID", required = false) Long updateID,
                            @RequestParam(value = "portraitUrl", required = false) String portraitUrl) {

        if (updateflag.equals("new")) {

            if (result.hasErrors()) {
                return "errrrrrrr";
            }

            if (userService.findByName(realmodel.getUsername()) != null)
                return "err: 用户名已经存在,请重新填写用户名";

            realmodel.setPortraitUrl(portraitUrl);
            realmodel.setPassword(bcryptEncoder.encode(realmodel.getPassword()));
            realmodel.setCreateTime(new Date());
            realmodel.setCreaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            realmodel.setUpdateTime(realmodel.getCreateTime());
            realmodel.setUpdaterID(realmodel.getCreaterID());
            userService.save(realmodel);

            UserSec userSec = new UserSec();
            try {
                BeanUtils.copyProperties(userSec, realmodel);
            } catch (IllegalAccessException | InvocationTargetException e) {
                e.printStackTrace();
                return "err: IllegalAccessException";

            }
            userSec.setAccountNonExpired(true);
            userSec.setCredentialsNonExpired(true);
            userSec.setAccountNonLocked(true);
            userSec.setEnabled(true);

            userSecRepos.save(userSec);

        } else {
            if (result.hasErrors()) {

                for (FieldError fieldError : result.getFieldErrors()) {
                    if (!bindingWhiteList.contains(fieldError.getField()))
                        return "errrrrrrr";
                }
            }
            User user = userService.findOne(updateID);
            user.setNickname(realmodel.getNickname());
            user.setUpdateTime(new Date());
            user.setUpdaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            userService.save(user);
        }

        return "ok";

    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addUser() {
        return "system/user/add";
    }

    @Perfable
    @ResponseBody
    @RequestMapping(value = "/user/list", method = RequestMethod.POST)
    public Map<String, Object> listUsersPost(
            @RequestParam(value = "start", defaultValue = "0") int start,
            @RequestParam(value = "length", defaultValue = "30") int length,
            @RequestParam(required = false) String searchString /*@RequestParam MultiValueMap parameters */)

    {

        PageRequest pageRequest = new PageRequest(
                start / length, length, Sort.Direction.ASC, "username"
        );

        Map<String, Object> info = new HashMap<>();

        info.put("data", userService.findAllUsersWithPage(pageRequest));

        info.put("recordsTotal", userService.count());

        info.put("recordsFiltered", userService.count());
        //info.put("a", userService.count());

        return info;
    }
}
