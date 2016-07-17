package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.modules.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/system/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String listUserPage() {
        return "system/user/user";
    }


    @ResponseBody
    @RequestMapping(value = "/user/list", method = RequestMethod.GET)
    public Map<String, Object> listUsers(@RequestParam(value = "name", defaultValue = "World") String name, HttpServletRequest request) {

        PageRequest pageRequest = new PageRequest(
                0, 20, Sort.Direction.ASC, "username"
        );

        Map<String, Object> info = new HashMap<>();

//        info.put("data", ssqService.findFistPage());
//        info.put("recordsTotal", TESTFIRSTPAGENUM);

        info.put("data", userService.findAllUsersWithPage(pageRequest));
        info.put("recordsTotal", userService.count());

        return info;
    }

    @ResponseBody
    @RequestMapping(value = "/user/list", method = RequestMethod.POST)
    public Map<String, Object> listUsersPost(@RequestParam(value = "name", defaultValue = "World") String name,
                                             @RequestParam(value = "start", defaultValue = "0") int start,
                                             @RequestParam(value = "length", defaultValue = "0") int length,
                                             HttpServletRequest request) {


        Enumeration paramNames = request.getParameterNames();
        while (paramNames.hasMoreElements()) {
            String paramName = (String) paramNames.nextElement();

            String[] paramValues = request.getParameterValues(paramName);
            if (paramValues.length == 1) {
                String paramValue = paramValues[0];
                if (paramValue.length() != 0) {
                    System.out.println("参数：" + paramName + "=" + paramValue);
                }
            }
        }

        PageRequest pageRequest = new PageRequest(
                start / length, length, Sort.Direction.ASC, "username"
        );

        Map<String, Object> info = new HashMap<>();

//        info.put("data", ssqService.findFistPage());
//        info.put("recordsTotal", TESTFIRSTPAGENUM);

        info.put("data", userService.findAllUsersWithPage(pageRequest));
        info.put("recordsTotal", userService.count());

        return info;
    }
}
