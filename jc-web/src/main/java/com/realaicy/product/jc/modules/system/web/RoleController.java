package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.vo.RoleVO;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.realglobal.web.CRUDWithVOController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigInteger;
import java.util.Collections;
import java.util.List;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/system/role")
public class RoleController extends CRUDWithVOController<Role, BigInteger, RoleVO> {

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
                listEntityUrl, searchEntityUrl, Role.class, RoleVO.class, bindingWhiteList);
        this.roleService = roleService;
    }

    @Override
    protected void InternalSaveNew(RoleVO realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {
        if (roleService.findByNameWithInAOrg(realmodel.getName(), realmodel.getOrgID()) != null)
            throw new SaveNewException("error角色名称已存在!");
    }

    @Override
    protected Role InternalSaveUpdate(RoleVO realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {
        Role org = roleService.findOne(updateID);
        org.setName(realmodel.getName());
        return org;
    }

    @Override
    protected void extendSave(Role po, BigInteger updateID, BigInteger pid) {

    }
}
