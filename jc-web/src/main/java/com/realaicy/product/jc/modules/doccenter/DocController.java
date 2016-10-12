package com.realaicy.product.jc.modules.doccenter;

import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
import com.realaicy.lib.core.mapper.JsonMapper;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.repos.DocFileRepos;
import com.realaicy.product.jc.modules.doccenter.repos.DocRepos;
import com.realaicy.product.jc.modules.doccenter.service.DocFileService;
import com.realaicy.product.jc.modules.doccenter.service.DocService;
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
@RequestMapping("/doccenter")
public class DocController {

    @Autowired
    DocRepos docRepos;

    @Autowired
    DocService docService;

    @Autowired
    DocFileRepos docFileRepos;

    @Autowired
    DocFileService docFileService;

    private static JsonMapper binder = JsonMapper.nonDefaultMapper();


    @RequestMapping("/overview")
    public String overview(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "doccenter/overview";
    }

    @RequestMapping("/manager")
    public String manager(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "doccenter/manager";
    }

    @RequestMapping("/m2")
    public String manager2(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "doccenter/m2";
    }

    @RequestMapping("/catalog/list")
    @ResponseBody
    public String listDocCatalog() {

        DocRes docRes = docRepos.findOne(1L);


        FilterProvider filters = new SimpleFilterProvider().addFilter("realFilter", SimpleBeanPropertyFilter.serializeAllExcept("updateTime"));

        binder.getMapper().setFilterProvider(filters);

        String beanString = binder.toJson(docRes);

        return beanString;
    }

    @RequestMapping("/catalog/listDocAll")
    @ResponseBody
    public String listDocAll() {

        DocFileRes docFileRes = docFileRepos.findOne(1L);

        FilterProvider filters = new SimpleFilterProvider().addFilter("realFilter2", SimpleBeanPropertyFilter.serializeAllExcept("updateTime"));

        binder.getMapper().setFilterProvider(filters);

        String beanString = binder.toJson(docFileRes);

        return beanString;
    }

    @RequestMapping(value = "/catalog/edit", method = RequestMethod.GET)
    @ResponseBody
    public String editDocCatalog(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

//        DocRes docRes = docRepos.findOne(Long.parseLong(id));
//
//        System.out.println(docRes.getName());
        return docService.updateDocCatalog(Long.parseLong(id), name);
    }

    @RequestMapping(value = "/catalog/create", method = RequestMethod.POST)
    @ResponseBody
    public String createDocCatalog(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

        return docService.createDocCatalog(Long.parseLong(id), name, false);
    }

    @RequestMapping(value = "/catalog/createSub", method = RequestMethod.POST)
    @ResponseBody
    public String createDocCatalogSub(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

        return docService.createDocCatalog(Long.parseLong(id), name, true);
    }
}
