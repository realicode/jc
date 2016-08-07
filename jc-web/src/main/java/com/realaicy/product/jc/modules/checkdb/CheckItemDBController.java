package com.realaicy.product.jc.modules.checkdb;

import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
import com.realaicy.product.jc.modules.checkdb.model.CheckItemDB;
import com.realaicy.product.jc.modules.checkdb.repos.CheckItemDBRepos;
import com.realaicy.product.jc.modules.checkdb.service.CheckItemDBService;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.repos.DocFileRepos;
import com.realaicy.product.jc.modules.doccenter.repos.DocRepos;
import com.realaicy.product.jc.modules.doccenter.service.DocFileService;
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
@RequestMapping("/checkitemdb")
public class CheckItemDBController {

    @Autowired
    CheckItemDBRepos checkItemDBRepos;

    @Autowired
    CheckItemDBService checkItemDBService;

    private static JsonMapper binder = JsonMapper.nonDefaultMapper();

    @RequestMapping("/manage")
    public String manager(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "checkitemdb/manage";
    }

    @RequestMapping("/list")
    public String initListPage(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "checkitemdb/list";
    }

    @RequestMapping("/listCheckItem")
    @ResponseBody
    public String listCheckItem() {

        CheckItemDB checkItemDB = checkItemDBRepos.findOne(2L);


        FilterProvider filters = new SimpleFilterProvider().addFilter("realFilterCheckDB", SimpleBeanPropertyFilter.serializeAllExcept("updateTime"));

        binder.getMapper().setFilterProvider(filters);

        String beanString = binder.toJson(checkItemDB);

        return beanString;
    }

}
