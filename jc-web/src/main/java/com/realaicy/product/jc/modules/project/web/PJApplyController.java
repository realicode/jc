package com.realaicy.product.jc.modules.project.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.project.model.PJApply;
import com.realaicy.product.jc.modules.project.service.PJApplyService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/project/apply")
public class PJApplyController extends CRUDController<PJApply, Long> {

    private PJApplyService service;
    static final private String[] nameDic = {"status"};
    static final private List<String> bindingWhiteList = Arrays.asList("password");
    static final private String pageUrl = "project/apply/page";
    static final private String newEntityUrl = "project/apply/add";
    static final private String editEntityUrl = "project/apply/add";
    static final private String listEntityUrl = "project/apply/page";
    static final private String searchEntityUrl = "project/apply/search";
    static final private String processUrl = "project/apply/process";


    @Autowired
    public PJApplyController(PJApplyService service) {
        super(service, "user", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, PJApply.class);
        this.service = service;
    }


    @RequestMapping(value = "/process/{id}", method = RequestMethod.GET)
    public String showProcess(@PathVariable("id") final Long id, Model model) {
        model.addAttribute("realmodel", service.findOne(id));
        model.addAttribute("realUpdateID", id);
        return processUrl;
    }

    @ResponseBody
    @RequestMapping(value = "/process", method = RequestMethod.POST)
    public String doProcess(@ModelAttribute("realmodel") final PJApply realmodel,
                            @RequestParam(value = "updateID", required = false) Long updateID) {

        PJApply pjApply = service.findOne(updateID);
        pjApply.setStatus(realmodel.getStatus());
        pjApply.setUpdateTime(new Date());
        pjApply.setUpdaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
        service.save(pjApply);
        return "ok";
    }

    @Override
    protected void InternalSaveNew(PJApply realmodel, Long updateID, Long pid) throws SaveNewException {

    }

    @Override
    protected PJApply InternalSaveUpdate(PJApply realmodel, Long updateID, Long pid) throws SaveNewException {
        return null;
    }
}
