package com.realaicy.product.jc.realglobal.web;

import com.google.common.base.Joiner;
import com.realaicy.lib.core.orm.jpa.entity.BaseEntity;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
import com.realaicy.lib.core.orm.plugin.CommonData;
import com.realaicy.lib.core.orm.plugin.LogicDeletable;
import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.common.aop.annotations.Perfable;
import com.realaicy.product.jc.common.exception.SaveNewException;
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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
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

    private final static String noAuthViewName = "global/errorpage/NOPrivilege";
    private final static String noAuthString = "NOPrivilege";
    private final BaseService<M, ID> service;
    private final String initFormParam;
    private final String[] nameDic;
    private final String pageUrl;
    private final String newEntityUrl;
    private final String editEntityUrl;
    @SuppressWarnings({"FieldCanBeLocal", "unused"})
    private final String listUrl;
    private final String searchEntityUrl;
    private final Class<M> aClass;

    protected OrgService getOrgService() {
        return orgService;
    }

    private OrgService orgService;

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

    static String getNoAuthString() {
        return noAuthString;
    }

    static String getNoAuthViewName() {
        return noAuthViewName;
    }

    @Autowired
    public void setOrgService(OrgService orgService) {
        this.orgService = orgService;
    }

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public String listEntityPage() {
        if (checkAuth("r", aClass.getSimpleName()))
            return this.pageUrl;
        else
            return noAuthViewName;
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newModel(Model model,
                           @RequestParam(value = "pid", required = false) ID pid,
                           @RequestParam(value = "pname", required = false) String pname) {
        if (!checkAuth("c", aClass.getSimpleName()))
            return noAuthViewName;

        try {
            model.addAttribute("realmodel", aClass.newInstance());
        } catch (InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
        }
        model.addAttribute("realneworupdate", "new");
        return newEntityUrl;
    }

    @RequestMapping(value = "/new/{orgID}", method = RequestMethod.GET)
    public String newModel(@PathVariable("orgID") final Long orgID, Model model) {
        if (!checkAuth("c", aClass.getSimpleName()))
            return noAuthViewName;
        try {
            model.addAttribute("realmodel", aClass.newInstance());

        } catch (IllegalAccessException | InstantiationException e) {
            e.printStackTrace();
        }
        model.addAttribute("realneworupdate", "new");
        model.addAttribute("orgID", orgID);
        return newEntityUrl;
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public String showModel(@PathVariable("id") final ID id, Model model) {
        if (!checkAuth("r", aClass.getSimpleName()))
            return noAuthViewName;
        model.addAttribute("realmodel", service.findOne(id));
        model.addAttribute("realUpdateID", id);
        return editEntityUrl;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search() {
        if (!checkAuth("s", aClass.getSimpleName()))
            return noAuthViewName;
        return searchEntityUrl;
    }

    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/spec")
    public List<M> findAllBySpecification(@RequestParam(value = "search", required = false) final String search) {

        if (!checkAuth("s", aClass.getSimpleName()))
            return null;

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

        if (!checkAuth("r", aClass.getSimpleName()))
            return null;

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
        final Pattern pattern = Pattern.compile("(\\w+?)(" + operationSetExper + ")(\\p{Punct}?)(\\p{L}+?)(\\p{Punct}?),");
        final Matcher matcher = pattern.matcher(search + ",");
        while (matcher.find()) {
            builder.with(matcher.group(1), matcher.group(2), matcher.group(4), matcher.group(3), matcher.group(5));
        }

        if (orgID == null || orgID.equals("")) {
            //noinspection ConstantConditions
            orgID = SpringSecurityUtil.getCurrentRealUserDetails().getOrgID().toString();
        }

        Org org = orgService.findOne(Long.parseLong(orgID));
        List<BigInteger> bigIntegersTemp = orgService.findAllChildIDs(org.getCascadeID());
        builder.with("orgID", "$",
                bigIntegersTemp, "", "");

        if (LogicDeletable.class.isAssignableFrom(aClass)) {
            builder.with("deleteFlag", ":", false, "", "");
        }


        final Specification<M> spec = builder.build();
        info.put("data", service.findAll(spec, pageRequest));
        info.put("recordsFiltered", service.count(spec));
        info.put("recordsTotal", service.count());
        return info;
    }


    @RequestMapping(method = RequestMethod.GET)
    public String initForm(Model model) {
        System.out.println("M:" + model);
        //service.initializeForm(model);
        return initFormParam;   // Now initialized by the constructor
    }

    @RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
    @ResponseBody
    @CacheEvict(cacheResolver = "runtimeCacheResolver", allEntries = true)
    public String delModel(@PathVariable("id") final ID id) {

        if (!checkAuth("d", aClass.getSimpleName()))
            return noAuthString;

        M entity = service.findOne(id);
        if (entity instanceof LogicDeletable) {
            ((LogicDeletable) entity).markDeleted();
            service.save(entity);
        } else {
            service.delete(entity);
        }
        return "ok";
    }


    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    @CacheEvict(cacheResolver = "runtimeCacheResolver", allEntries = true)
    public String saveModel(@Valid @ModelAttribute("realmodel") final M realmodel,
                            final BindingResult result,
                            @RequestParam(value = "updateflag", required = false) String updateflag,
                            @RequestParam(value = "updateID", required = false) ID updateID,
                            @RequestParam(value = "pid", required = false) ID pid) {

        if (!checkAuth("c", aClass.getSimpleName()))
            return noAuthString;

        if (result.hasErrors()) {
            return "error绑定异常（非页面提交，你是机器人？）";
        }

        if (updateflag.equals("new")) {
            try {
                InternalSaveNew(realmodel, updateID, pid);
            } catch (SaveNewException e) {
                return e.getMessage();
            }

            if (realmodel instanceof CommonData) {
                realmodel.setCreateTime(new Date());
                //noinspection unchecked,ConstantConditions
                realmodel.setCreaterID((ID) SpringSecurityUtil.getCurrentPrincipal().getId());
                realmodel.setUpdateTime(realmodel.getCreateTime());
                realmodel.setUpdaterID(realmodel.getCreaterID());
            }

            service.save(realmodel);
            return "ok";

        } else if (updateflag.equals("editedit")) {//edit
            try {
                M entity = InternalSaveUpdate(realmodel, updateID, pid);
                if (entity instanceof CommonData) {
                    entity.setUpdateTime(new Date());
                    //noinspection unchecked,ConstantConditions
                    entity.setUpdaterID((ID) SpringSecurityUtil.getCurrentPrincipal().getId());
                    service.save(entity);
                }
            } catch (SaveNewException e) {
                return e.getMessage();
            }
            return "ok";
        }// end of edit
        return null;
    }


    boolean checkAuth(String reqAuthString, String objType) {
        return SpringSecurityUtil.hasPrivilege(objType + "-" + "a") || SpringSecurityUtil.hasPrivilege(objType + "-" + reqAuthString);
    }

    protected abstract void InternalSaveNew(M realmodel, ID updateID, ID pid) throws SaveNewException;

    protected abstract M InternalSaveUpdate(M realmodel, ID updateID, ID pid) throws SaveNewException;

    @RequestMapping(value = "/a", method = RequestMethod.POST)
    @ResponseBody
    public String userToRoleSave(@RequestParam(value = "userid", required = false) String userid) {


        return "ok";
    }
}
