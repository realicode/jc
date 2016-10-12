package com.realaicy.product.jc.modules.project.web;

import com.realaicy.product.jc.modules.project.model.PJApply;
import com.realaicy.product.jc.modules.project.model.ProjectInfo;
import com.realaicy.product.jc.modules.project.service.PJApplyService;
import com.realaicy.product.jc.modules.project.service.ProjectInfoService;
import com.realaicy.product.jc.modules.system.service.OrgService;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.runtime.ProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.*;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/project/info")
public class ProjectInfoController extends CRUDController<ProjectInfo, Long> {

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

    @ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveModel(@Valid @ModelAttribute("realmodel") final ProjectInfo realmodel,
                            final BindingResult result, final ModelMap model,
                            @RequestParam(value = "updateflag", required = false, defaultValue = "new") String updateflag,
                            @RequestParam(value = "updateID", required = false) Long updateID,
                            @RequestParam(value = "managerid", required = true) String managerid) {

        if (updateflag.equals("new")) {

            if (result.hasErrors()) {
                return "errrrrrrr";
            }

            //realmodel.setManager(userService.findOne(Long.parseLong(managerid)));
            realmodel.setCreateTime(new Date());
            realmodel.setCreaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            realmodel.setUpdateTime(realmodel.getCreateTime());
            realmodel.setUpdaterID(realmodel.getCreaterID());

            ProjectInfo saved = service.save(realmodel);
            Map<String, Object> variables = new HashMap<String, Object>();
            variables.put("projectName", saved.getPjName());
            runtimeService.startProcessInstanceByKey("simplejc", saved.getId().toString(), variables);

        } else {
            if (result.hasErrors()) {

                for (FieldError fieldError : result.getFieldErrors()) {
                    if (!bindingWhiteList.contains(fieldError.getField()))
                        return "errrrrrrr";
                }
            }
            ProjectInfo projectInfo = service.findOne(updateID);
            projectInfo.setUpdateTime(new Date());
            projectInfo.setUpdaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            service.save(projectInfo);
        }

        return "ok";

    }

}
