package com.realaicy.product.jc.modules.msg;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller
@RequestMapping("/msg")
public class MsgController {
    @RequestMapping("/inbox")
    public String dashboard(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "msg/inbox";
    }

    @RequestMapping("/unread")
    public String unread(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "msg/unread";
    }

    @RequestMapping("/msg-list")
    public String listMsg(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "msg/email/email-list";
    }

    @RequestMapping("/msg-compose")
    public String createMsg(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "msg/email-compose";
    }

    @RequestMapping("/email-opened")
    public String showMsg(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "msg/email-opened";
    }
}
