package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.vo.OrgVO;
import com.realaicy.product.jc.modules.system.service.OrgService;
import com.realaicy.product.jc.realglobal.web.TreeController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

import static com.realaicy.lib.core.utils.RealBeanUtils.getNullPropertyNames;

/**
 * Created by realaicy on 16/7/15.
 * 组织机构
 */

@Controller
@RequestMapping("/system/org")
public class OrgController extends TreeController<Org, Long, OrgVO> {

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
                listEntityUrl, searchEntityUrl, Org.class, OrgVO.class, bindingWhiteList);
        this.orgService = orgService;
    }

    @Override
    public Long getRealID() {
        //noinspection ConstantConditions
        return SpringSecurityUtil.getCurrentRealUserDetails().getOrgID();
    }

    @Override
    protected void InternalSaveNew(OrgVO realmodel, Long updateID, Long pid) throws SaveNewException {
        if (orgService.findByNameWithInAParent(realmodel.getName(), pid) != null)
            throw new SaveNewException("error组织名称已存在!");
    }

    @Override
    protected Org InternalSaveUpdate(OrgVO realmodel, Long updateID, Long pid) throws SaveNewException {

        Org org = orgService.findOne(updateID);
        Org orgTemp = orgService.findByNameWithInAParent(realmodel.getName(), org.getParent().getId());

        if (orgTemp != null
                && !Objects.equals(orgTemp.getId(), updateID))
            throw new SaveNewException("error组织名称已存在!");

        BeanUtils.copyProperties(realmodel, org, getNullPropertyNames(realmodel));

//        org.setName(realmodel.getName());
//        org.setContactName(realmodel.getContactName());
//        org.setContactTel(realmodel.getContactTel());
//        org.setContactEmail(realmodel.getContactEmail());
        //BeanUtils.copyProperties(realmodel, org);
        return org;
    }
}
