package com.realaicy.product.jc.modules.project;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.runtime.ProcessInstance;
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
@RequestMapping("/project")
public class ProjectController {
    @Autowired
    RuntimeService runtimeService;

    @RequestMapping(value = "/wf/new", method = RequestMethod.GET)
    public String initCreatePage(Model model) {
        return "project/wf/create";
    }

    @RequestMapping(value = "/wf/start", method = RequestMethod.GET)
    public String initStartPage(Model model) {
        return "project/wf/start";
    }

    @ResponseBody
    @RequestMapping(value = "/wf/start", method = RequestMethod.POST)
    public String startProcess(@RequestParam(value = "processDefinitionKey", required = false) String processDefinitionKey,
                               @RequestParam(value = "businessKey", required = false) String businessKey) {
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(processDefinitionKey,businessKey);
        System.out.println(processInstance.getName());
        return "ok";
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
