package com.realaicy.product.jc.realglobal.web;

import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
import com.realaicy.lib.core.mapper.JsonMapper;
import com.realaicy.lib.core.orm.jpa.entity.BaseEntity;
import com.realaicy.lib.core.orm.plugin.CommonData;
import com.realaicy.lib.core.orm.plugin.Treeable;
import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.Serializable;

/**
 * Created by realaicy on 16/8/18.
 * xxx
 */
@Controller
public abstract class TreeController<M extends BaseEntity<ID> & Treeable<ID> & CommonData<ID>,
        ID extends Serializable> extends CRUDController<M, ID> {

    private static JsonMapper binder = JsonMapper.nonDefaultMapper();
    private final BaseService<M, ID> service;
    private final String pageUrl;
    private final Class<M> aClass;
    private final String newEntityUrl;

    private Logger log = LoggerFactory.getLogger(getClass());

    public TreeController(BaseService<M, ID> service, String initFormParam, String[] nameDic, String pageUrl,
                          String newEntityUrl, String editEntityUrl, String listUrl, String searchEntityUrl,
                          Class<M> aClass) {
        super(service, initFormParam, nameDic, pageUrl, newEntityUrl, editEntityUrl, listUrl, searchEntityUrl, aClass);
        this.service = service;
        this.pageUrl = pageUrl;
        this.newEntityUrl = newEntityUrl;
        this.aClass = aClass;
    }


    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public String listEntityPage() {
        return this.pageUrl;
    }

    @SuppressWarnings("unused")
    public Class<M> getaClass() {
        return aClass;
    }

    @RequestMapping("/list")
    @ResponseBody
    @Cacheable(key = "#root.target.getRealID()", cacheResolver = "runtimeCacheResolver")
    public String listTree(@RequestParam(value = "id", required = false, defaultValue = "2") final ID id) {

        log.info("listTree: id:" + id);

        assert aClass != null;
        if (!SpringSecurityUtil.hasPrivilege(aClass.getSimpleName() + "-" + "r"))
            return "NOPrivilege";

        M treeModel = service.findOne(getRealID());
        // M treeModel = service.findOne(getRealID());
        FilterProvider filters = new SimpleFilterProvider().addFilter("realFilter", SimpleBeanPropertyFilter.serializeAllExcept("updateTime"));
        binder.getMapper().setFilterProvider(filters);
        String s = binder.toJson(treeModel);
        return "[" + s + "]";
    }


    public abstract ID getRealID();

    @Override
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newModel(Model model,
                           @RequestParam(value = "pid", required = false) final ID pid,
                           @RequestParam(value = "pname", required = false) final String pname) {
        try {
            assert aClass != null;
            model.addAttribute("realmodel", aClass.newInstance());
            model.addAttribute("pname", pname);
            model.addAttribute("pid", pid);
        } catch (InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
        }
        model.addAttribute("realneworupdate", "new");
        return newEntityUrl;
    }
}
