package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.service.OrgService;
import com.realaicy.product.jc.realglobal.web.TreeController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Objects;

/**
 * Created by realaicy on 16/7/15.
 * 组织机构
 */

@Controller
@RequestMapping("/system/org")
public class OrgController extends TreeController<Org, Long> {

    private OrgService orgService;
    static final private String[] nameDic = {"username", "password", "nickname", "createTime"};
    //static final private List<String> bindingWhiteList = Collections.singletonList("password");
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

    @Override
    protected Org InternalSaveUpdate(Org realmodel, Long updateID, Long pid) throws SaveNewException {
        Org org = orgService.findOne(updateID);
        Org orgTemp = orgService.findByNameWithInAParent(realmodel.getName(), org.getParent().getId());

        if (orgTemp != null
                && !Objects.equals(orgTemp.getId(), updateID))
            throw new SaveNewException("error组织名称已存在!");

        org.setName(realmodel.getName());
        org.setContactName(realmodel.getContactName());
        org.setContactTel(realmodel.getContactTel());
        org.setContactEmail(realmodel.getContactEmail());
        //BeanUtils.copyProperties(realmodel, org);
        return org;
    }

    @Override
    protected void InternalSaveNew(Org realmodel, Long updateID, Long pid) throws SaveNewException {
        if (orgService.findByNameWithInAParent(realmodel.getName(), pid) != null)
            throw new SaveNewException("error组织名称已存在!");

        Org parent = orgService.findOne(pid);
        realmodel.setParent(parent);
        realmodel.setDeleteFlag(false);

        List<Org> orgTempList = orgService.findByCascadeIDStartingWith(parent.getCascadeID());
        if (orgTempList.size() == 1) {
            realmodel.setCascadeID(parent.getCascadeID() + ".001");
        } else {
            realmodel.setCascadeID(parent.getCascadeID() + "." + String.format("%03d", orgTempList.size()));
        }
        realmodel.setFolder(true);
    }

    @Override
    public Long getRealID() {
        //noinspection ConstantConditions
        return SpringSecurityUtil.getCurrentRealUserDetails().getOrgID();
    }
}
