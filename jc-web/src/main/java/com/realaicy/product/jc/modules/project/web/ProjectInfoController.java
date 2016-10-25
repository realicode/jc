package com.realaicy.product.jc.modules.project.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.project.model.ProjectInfo;
import com.realaicy.product.jc.modules.project.service.ProjectInfoService;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import org.activiti.engine.RuntimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.*;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/project/info")
public class ProjectInfoController extends CRUDController<ProjectInfo, BigInteger> {

    private ProjectInfoService service;
    static final private String[] nameDic = {"status"};
    static final private List<String> bindingWhiteList = Arrays.asList("password");
    static final private String pageUrl = "project/info/page";
    static final private String newEntityUrl = "project/info/add";
    static final private String editEntityUrl = "project/info/add";
    static final private String listEntityUrl = "project/info/page";
    static final private String searchEntityUrl = "project/info/search";

    UserService userService;

    private RuntimeService runtimeService;

    @Autowired
    public ProjectInfoController(ProjectInfoService service) {
        super(service, "user", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, ProjectInfo.class);
        this.service = service;
    }

    @Override
    protected void InternalSaveNew(ProjectInfo realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {

    }

    @Override
    protected ProjectInfo InternalSaveUpdate(ProjectInfo realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {
        return null
                ;
    }
}
