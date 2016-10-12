package com.realaicy.product.jc.realglobal.web;

import com.google.common.base.Joiner;
import com.realaicy.lib.core.orm.jpa.entity.BaseEntity;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
import com.realaicy.lib.core.orm.plugin.CommonData;
import com.realaicy.lib.core.orm.plugin.LogicDeletable;
import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.common.aop.annotations.Perfable;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.service.OrgService;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by realaicy on 16/8/18.
 * xxx
 */
@Controller
public abstract class CRUDController<M extends BaseEntity<ID> & CommonData<ID>,
        ID extends Serializable> {

    private final BaseService<M, ID> service;
    private final String initFormParam;
    private final String[] nameDic;
    private final String pageUrl;
    private final String newEntityUrl;
    private final String editEntityUrl;
    private final String listUrl;
    private final String searchEntityUrl;
    private final Class<M> aClass;
    private OrgService orgService;

    public CRUDController(BaseService<M, ID> service, String initFormParam) {
        this.service = service;
        this.initFormParam = initFormParam;
        this.nameDic = null;
        this.newEntityUrl = null;
        this.editEntityUrl = null;
        this.listUrl = null;
        this.searchEntityUrl = null;
        this.pageUrl = null;
        this.aClass = null;
    }

    public CRUDController(BaseService<M, ID> service, String initFormParam, String[] nameDic, String pageUrl,
                          String newEntityUrl, String editEntityUrl, String listUrl, String searchEntityUrl,
                          Class<M> aClass) {
        this.service = service;
        this.initFormParam = initFormParam;
        this.nameDic = nameDic;
        this.newEntityUrl = newEntityUrl;
        this.editEntityUrl = editEntityUrl;
        this.listUrl = listUrl;
        this.searchEntityUrl = searchEntityUrl;
        this.pageUrl = pageUrl;
        this.aClass = aClass;
    }

    public OrgService getOrgService() {
        return orgService;
    }

    @Autowired
    public void setOrgService(OrgService orgService) {
        this.orgService = orgService;
    }

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public String listEntityPage() {
        return this.pageUrl;
    }

    @Perfable
    @ResponseBody
    @RequestMapping(method = RequestMethod.POST, value = "/list4dt")
    public Map<String, Object> findAllBySpecificationToDT(
            @RequestParam(value = "start", defaultValue = "0") int start,
            @RequestParam(value = "length", defaultValue = "30") int length,
            @RequestParam(value = "order[0][column]", defaultValue = "1") int orderIndex,
            @RequestParam(value = "order[0][dir]", defaultValue = "asc") String orderType,
            @RequestParam(value = "search", required = false) String search,
            @RequestParam(value = "orgID", required = false) String orgID
    ) {

        Map<String, Object> info = new HashMap<>();

        Sort sort;
        if (orderIndex > nameDic.length) orderIndex = 1;
        if (orderType.equals("asc"))
            sort = new Sort(Sort.Direction.ASC, nameDic[orderIndex - 1]);
        else
            sort = new Sort(Sort.Direction.DESC, nameDic[orderIndex - 1]);

        PageRequest pageRequest = new PageRequest(
                start / length, length, sort
        );
        //pageRequest.getSort().and(new Sort(Sort.Direction.ASC));

        final BaseSpecificationsBuilder<M> builder = new BaseSpecificationsBuilder<>();
        final String operationSetExper = Joiner.on("|").join(SearchOperation.SIMPLE_OPERATION_SET);
        final Pattern pattern = Pattern.compile("(\\w+?)(" + operationSetExper + ")(\\p{Punct}?)(\\w+?)(\\p{Punct}?),");
        final Matcher matcher = pattern.matcher(search + ",");
        while (matcher.find()) {
            builder.with(matcher.group(1), matcher.group(2), matcher.group(4), matcher.group(3), matcher.group(5));
        }

        if (orgID == null || orgID.equals("")) {
            orgID = SpringSecurityUtil.getCurrentRealUserDetails().getOrgID().toString();
        }

        Org org = orgService.findOne(Long.parseLong(orgID));
        List<BigInteger> bigIntegersTemp = orgService.findAllChildIDs(org.getCascadeID());
        builder.with("orgID", "$",
                bigIntegersTemp, "", "");

        final Specification<M> spec = builder.build();
        info.put("data", service.findAll(spec, pageRequest));
        info.put("recordsFiltered", service.count(spec));
        info.put("recordsTotal", service.count());
        return info;
    }

    /*@RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newModel(Model model) {
        try {
            model.addAttribute("realmodel", aClass.newInstance());
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        model.addAttribute("realneworupdate", "new");
        return newEntityUrl;
    }*/

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newModel(Model model,
                           @RequestParam(value = "pid", required = false) ID pid,
                           @RequestParam(value = "pname", required = false) String pname) {
        try {
            model.addAttribute("realmodel", aClass.newInstance());
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        model.addAttribute("realneworupdate", "new");
        return newEntityUrl;
    }

    @RequestMapping(value = "/new/{orgID}", method = RequestMethod.GET)
    public String newModel(@PathVariable("orgID") final Long orgID, Model model) {
        try {
            model.addAttribute("realmodel", aClass.newInstance());

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }
        model.addAttribute("realneworupdate", "new");
        model.addAttribute("orgID", orgID);
        return newEntityUrl;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(Model model) {
        return searchEntityUrl;
    }


    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String showModel(@PathVariable("id") final ID id, Model model) {
        model.addAttribute("realmodel", service.findOne(id));
        model.addAttribute("realUpdateID", id);
        return editEntityUrl;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/spec")
    public List<M> findAllBySpecification(@RequestParam(value = "search", required = false) final String search) {
        final BaseSpecificationsBuilder<M> builder = new BaseSpecificationsBuilder<>();
        final String operationSetExper = Joiner.on("|").join(SearchOperation.SIMPLE_OPERATION_SET);
        final Pattern pattern = Pattern.compile("(\\w+?)(" + operationSetExper + ")(\\p{Punct}?)(\\w+?)(\\p{Punct}?),");
        final Matcher matcher = pattern.matcher(search + ",");
        while (matcher.find()) {
            builder.with(matcher.group(1), matcher.group(2), matcher.group(4), matcher.group(3), matcher.group(5));
        }

        final Specification<M> spec = builder.build();
        return service.findAll(spec);
    }

    /*@Perfable
    @ResponseBody
    @RequestMapping(method = RequestMethod.POST, value = "/list4dt")
    public Map<String, Object> findAllBySpecificationToDT(
            @RequestParam(value = "start", defaultValue = "0") int start,
            @RequestParam(value = "length", defaultValue = "30") int length,
            @RequestParam(value = "order[0][column]", defaultValue = "1") int orderIndex,
            @RequestParam(value = "order[0][dir]", defaultValue = "asc") String orderType,
            @RequestParam(value = "search", required = false) final String search) {

        Map<String, Object> info = new HashMap<>();

        Sort sort;
        if (orderIndex > nameDic.length) orderIndex = 1;
        if (orderType.equals("asc"))
            sort = new Sort(Sort.Direction.ASC, nameDic[orderIndex - 1]);
        else
            sort = new Sort(Sort.Direction.DESC, nameDic[orderIndex - 1]);

        PageRequest pageRequest = new PageRequest(
                start / length, length, sort
        );
        //pageRequest.getSort().and(new Sort(Sort.Direction.ASC));

        if (search != null && !search.equals("")) {
            final BaseSpecificationsBuilder<M> builder = new BaseSpecificationsBuilder<>();
            final String operationSetExper = Joiner.on("|").join(SearchOperation.SIMPLE_OPERATION_SET);
            final Pattern pattern = Pattern.compile("(\\w+?)(" + operationSetExper + ")(\\p{Punct}?)(\\w+?)(\\p{Punct}?),");
            final Matcher matcher = pattern.matcher(search + ",");
            while (matcher.find()) {
                builder.with(matcher.group(1), matcher.group(2), matcher.group(4), matcher.group(3), matcher.group(5));
            }
            final Specification<M> spec = builder.build();
            info.put("data", service.findAll(spec, pageRequest));
            info.put("recordsFiltered", service.count(spec));

        } else {

            info.put("data", service.findAll(pageRequest));
            info.put("recordsFiltered", service.count());

        }

        info.put("recordsTotal", service.count());

        return info;
    }*/


    /* @RequestMapping(value = "/validation.json", method = RequestMethod.POST)
     @ResponseBody
     public Boolean ValidationResponseajaxValidation(@Valid M t, BindingResult result) {
         // same as in the example
         return Boolean.TRUE;
     }
 */
    @RequestMapping(method = RequestMethod.GET)
    public String initForm(Model model) {
        //service.initializeForm(model);
        return initFormParam;   // Now initialized by the constructor
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    @ResponseBody
    @CacheEvict(cacheResolver = "runtimeCacheResolver", allEntries = true)
    public String delModel(@PathVariable("id") final ID id) {
        M entity = service.findOne(id);
        if (entity instanceof LogicDeletable) {
            ((LogicDeletable) entity).markDeleted();
            service.save(entity);
        } else {
            service.delete(entity);
        }
        return "ok";
    }


}
