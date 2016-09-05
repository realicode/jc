package com.realaicy.product.jc.modules.system.web;

import com.google.common.base.Joiner;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
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
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.lang.reflect.InvocationTargetException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/system/user")
public class UserController extends CRUDController<User, Long> {

    private UserService userService;
    static final private String[] nameDic = {"username", "password", "nickname", "createTime"};
    static final private List<String> bindingWhiteList = Arrays.asList("password");
    static final private String pageUrl = "system/user/page";
    static final private String newEntityUrl = "system/user/add";
    static final private String editEntityUrl = "system/user/add";
    static final private String listEntityUrl = "system/user/page";
    static final private String searchEntityUrl = "system/user/search";
    static final private String userToRoleUrl = "system/user/user2role";


    @Autowired
    public UserController(UserService userService) {
        super(userService, "user", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, User.class);
        this.userService = userService;
    }

    @Autowired
    PasswordEncoder bcryptEncoder;

    @Autowired
    UserSecRepos userSecRepos;


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


    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/list4select", produces = "application/json")
    public Map<String, Object> findAllBySpecificationToSelect(
            @RequestParam(value = "q", required = true) String search) {

        Map<String, Object> info = new HashMap<>();

        List<User> users = userService.findByUsernameContaining(search);
        info.put("items", users);
        return info;
    }

    @RequestMapping(value = "/user2role/{id}", method = RequestMethod.GET)
    public String userToRole(@PathVariable("id") final Long id) {
        return userToRoleUrl;
    }
}
