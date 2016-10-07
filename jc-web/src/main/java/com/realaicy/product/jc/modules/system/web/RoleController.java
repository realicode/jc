package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.model.UserSec;
import com.realaicy.product.jc.modules.system.repos.UserSecRepos;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/system/role")
public class RoleController extends CRUDController<Role, Long> {

    private RoleService roleService;
    static final private String[] nameDic = {"roleName"};
    static final private List<String> bindingWhiteList = Arrays.asList("");
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

}
