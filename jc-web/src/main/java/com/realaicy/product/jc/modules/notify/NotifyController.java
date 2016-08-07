package com.realaicy.product.jc.modules.notify;

import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.repos.DocRepos;
import com.realaicy.product.jc.modules.doccenter.service.DocService;
import com.realaicy.lib.core.mapper.JsonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller
@RequestMapping("/notify")
public class NotifyController {

    @Autowired
    DocRepos docRepos;

    @Autowired
    DocService docService;


    @RequestMapping("/notifications")
    public String notifications() {
        return "notify/notifications";
    }

    @RequestMapping("/mail")
    public String mail() {
        return "notify/mail";
    }

    @RequestMapping("/tasks")
    public String overview() {
        return "notify/tasks";
    }

    @RequestMapping("/manager")
    public String manager(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "doccenter/manager";
    }

}
