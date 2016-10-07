package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.service.OrgService;
import com.realaicy.product.jc.realglobal.web.TreeController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 * Created by realaicy on 16/7/15.
 * 组织机构
 */

@Controller
@RequestMapping("/system/org")
public class OrgController extends TreeController<Org, Long> {


    private OrgService orgService;
    static final private String[] nameDic = {"username", "password", "nickname", "createTime"};
    static final private List<String> bindingWhiteList = Collections.singletonList("password");
    static final private String pageUrl = "system/org/page";
    static final private String newEntityUrl = "system/org/add";
    static final private String editEntityUrl = "system/org/add";
    static final private String listEntityUrl = "system/org/page";
    static final private String searchEntityUrl = "system/org/search";


    @Autowired
    public OrgController(OrgService orgService) {
        super(orgService, "org", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, Org.class);
        this.orgService = orgService;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @CacheEvict(cacheResolver = "runtimeCacheResolver", allEntries = true)
    public void saveModel(@Valid @ModelAttribute("realmodel") final Org realmodel,
                          final BindingResult result, final ModelMap model,
                          @RequestParam(value = "updateflag", required = false) String updateflag,
                          @RequestParam(value = "updateID", required = false) Long updateID,
                          @RequestParam(value = "portraitUrl", required = false) String portraitUrl,
                          @RequestParam(value = "pid") String pid,
                          HttpServletResponse httpServletResponse) {

        if (updateflag.equals("new")) {

            if (result.hasErrors()) {
                try {
                    httpServletResponse.getWriter().println("errrrrrrr");
                    httpServletResponse.getWriter().close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            if (orgService.findByNameWithInAParent(realmodel.getName(), Long.parseLong(pid)) != null) {
                try {
                    httpServletResponse.getWriter().println("err: 名称已经存在,请重新填写组织机构名称！");
                    httpServletResponse.getWriter().close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }


            Org parent = orgService.findOne(Long.parseLong(pid));
            realmodel.setParent(parent);
            realmodel.setDeleteFlag(false);

            List<Org> orgTempList = orgService.findByCascadeIDStartingWith(parent.getCascadeID());
            if (orgTempList.size() == 1) {
                realmodel.setCascadeID(parent.getCascadeID() + ".001");
            } else {
                realmodel.setCascadeID(parent.getCascadeID() + "." + String.format("%03d", orgTempList.size()));

            }

            realmodel.setFolder(true);
            realmodel.setCreateTime(new Date());
            //noinspection ConstantConditions
            realmodel.setCreaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            realmodel.setUpdateTime(realmodel.getCreateTime());
            realmodel.setUpdaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            orgService.save(realmodel);

        } else {//edit
            if (result.hasErrors()) {
                result.getFieldErrors().stream().filter(fieldError -> !bindingWhiteList.contains(fieldError.getField())).forEach(fieldError -> {
                    try {
                        httpServletResponse.getWriter().println("errrrrrrr");
                        httpServletResponse.getWriter().close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                });
            }
            Org org = orgService.findOne(updateID);
            org.setName(realmodel.getName());
            org.setContactName(realmodel.getContactName());
            org.setContactTel(realmodel.getContactTel());
            realmodel.setContactEmail(realmodel.getContactEmail());

            org.setUpdateTime(new Date());
            //noinspection ConstantConditions
            org.setUpdaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            orgService.save(org);
        }

        System.out.println("OKKKK");
        try {
            httpServletResponse.getWriter().println("ok");
            httpServletResponse.getWriter().close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Long getRealID() {
        //noinspection ConstantConditions
        return SpringSecurityUtil.getCurrentRealUserDetails().getOrgID();
    }
}
