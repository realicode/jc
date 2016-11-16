package com.realaicy.product.jc.modules.project;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller
@RequestMapping("/project")
public class ProjectController {

    @RequestMapping(value = "/wf/new", method = RequestMethod.GET)
    public String initCreatePage(Model model) {
        return "project/wf/create";
    }



    @RequestMapping("/projects")
    public String dashboard(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "project/projects";
    }

    @RequestMapping("/blog")
    public String blog(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "project/blog";
    }

    @RequestMapping("/timeline")
    public String timeline(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "project/timeline";
    }

    @RequestMapping("/calendar")
    public String calendar(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "project/calendar";
    }

    @RequestMapping(value = "/process", method = RequestMethod.GET)
    public String process(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "project/process";
    }


}
