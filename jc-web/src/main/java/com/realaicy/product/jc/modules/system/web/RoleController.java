package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Collections;
import java.util.List;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/system/role")
public class RoleController extends CRUDController<Role, Long> {

    private RoleService roleService;
    static final private String[] nameDic = {"name"};
    static final private List<String> bindingWhiteList = Collections.singletonList("");
    static final private String pageUrl = "system/role/page";
    static final private String newEntityUrl = "system/role/add";
    static final private String editEntityUrl = "system/role/add";
    static final private String listEntityUrl = "system/role/page";
    static final private String searchEntityUrl = "system/role/search";


    @Autowired
    public RoleController(RoleService roleService) {
        super(roleService, "role", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, Role.class);
        this.roleService = roleService;
    }

    @ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveModel(@Valid @ModelAttribute("realmodel") final Role realmodel,
                            final BindingResult result, final ModelMap model,
                            @RequestParam(value = "updateflag", required = false) String updateflag,
                            @RequestParam(value = "updateID", required = false) Long updateID
    ) {

        if (updateflag.equals("new")) {
            if (result.hasErrors())
                return "errrrrrrr";
            if (roleService.existName(realmodel.getName()))
                return "err: 用户名已经存在,请重新填写用户名";

//            realmodel.setDeleteFlag(false);
//            realmodel.setCreateTime(new Date());
//            realmodel.setCreaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
//            realmodel.setUpdateTime(realmodel.getCreateTime());
//            realmodel.setUpdaterID(realmodel.getCreaterID());
            roleService.save(realmodel);

        } else {//编辑更新
            if (result.hasErrors()) {
                for (FieldError fieldError : result.getFieldErrors()) {
                    if (!bindingWhiteList.contains(fieldError.getField()))
                        return "errrrrrrr";
                }
            }
            Role role = roleService.findOne(updateID);
            role.setName(realmodel.getName());
//            role.setUpdateTime(new Date());
//            role.setUpdaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            roleService.save(role);
        }

        return "ok";

    }

}
