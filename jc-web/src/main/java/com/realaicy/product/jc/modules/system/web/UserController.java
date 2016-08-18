package com.realaicy.product.jc.modules.system.web;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
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


   /* @ResponseBody
    @RequestMapping(value = "/user/list", method = RequestMethod.GET)
    public Map<String, Object> listUsers() {

        PageRequest pageRequest = new PageRequest(
                0, 20, Sort.Direction.ASC, "username"
        );

        Map<String, Object> info = new HashMap<>();

        info.put("data", userService.findAllUsersWithPage(pageRequest));
        info.put("recordsTotal", userService.count());

        return info;
    }*/

    @ResponseBody
    @RequestMapping(value = "/user/list", method = RequestMethod.POST)
    public Map<String, Object> listUsersPost(
            @RequestParam(value = "start", defaultValue = "0") int start,
            @RequestParam(value = "length", defaultValue = "30") int length) {

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
