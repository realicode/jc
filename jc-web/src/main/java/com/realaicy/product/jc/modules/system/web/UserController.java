package com.realaicy.product.jc.modules.system.web;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.common.aop.annotations.Perfable;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/system/user")
public class UserController extends CRUDController<User, Long> {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        super(userService, "user");
        this.userService = userService;
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String listUserPage() {
        return "system/user/user";
    }


    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newModel(Model model) {
        model.addAttribute("realmodel", new User());
        return "system/user/add";
    }

    @ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveModel(
            @ModelAttribute("realmodel") final User realmodel, final BindingResult result, final ModelMap model) {

        userService.save(realmodel);

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
