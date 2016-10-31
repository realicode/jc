package com.realaicy.product.jc.modules.auditdb.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.auditdb.model.AuditCheckItem;
import com.realaicy.product.jc.modules.auditdb.model.vo.AuditCheckItemVO;
import com.realaicy.product.jc.modules.auditdb.service.AuditCheckItemService;
import com.realaicy.product.jc.realglobal.web.TreeController;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigInteger;
import java.util.Collections;
import java.util.List;

import static com.realaicy.lib.core.utils.RealBeanUtils.getNullPropertyNames;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller
@RequestMapping("/auditdb/chkitem/")
public class AuditCheckItemController extends TreeController<AuditCheckItem, BigInteger, AuditCheckItemVO> {

    private AuditCheckItemService auditCheckItemService;
    static final private String[] nameDic = {"name"};
    static final private List<String> bindingWhiteList = Collections.singletonList("name");
    static final private String pageUrl = "auditdb/chkitem/page";
    static final private String newEntityUrl = "auditdb/chkitem/add";
    static final private String editEntityUrl = "auditdb/chkitem/add";
    static final private String listEntityUrl = "auditdb/chkitem/page";
    static final private String searchEntityUrl = "auditdb/chkitem/search";

    @Autowired
    public AuditCheckItemController(AuditCheckItemService auditCheckItemService) {
        super(auditCheckItemService, "org", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, AuditCheckItem.class, AuditCheckItemVO.class, bindingWhiteList);
        this.auditCheckItemService = auditCheckItemService;
    }

    @Override
    public BigInteger getRealID() {
        return BigInteger.valueOf(3);
    }

    @Override
    protected void InternalSaveNew(AuditCheckItemVO realmodel, BigInteger updateID, BigInteger pid)
            throws SaveNewException {
    }

    @Override
    protected AuditCheckItem InternalSaveUpdate(AuditCheckItemVO realmodel, BigInteger updateID, BigInteger pid)
            throws SaveNewException {
        AuditCheckItem auditCheckItem = getService().findOne(updateID);
        BeanUtils.copyProperties(realmodel, auditCheckItem, getNullPropertyNames(realmodel));

        return auditCheckItem;
    }
}
