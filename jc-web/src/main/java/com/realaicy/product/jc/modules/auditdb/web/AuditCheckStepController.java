package com.realaicy.product.jc.modules.auditdb.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.auditdb.model.AuditCheckStep;
import com.realaicy.product.jc.modules.auditdb.model.vo.AuditCheckStepVO;
import com.realaicy.product.jc.modules.auditdb.service.AuditCheckStepService;
import com.realaicy.product.jc.realglobal.web.CRUDWithVOController;
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
@RequestMapping("/auditdb/chkstep/")
public class AuditCheckStepController extends CRUDWithVOController<AuditCheckStep, BigInteger, AuditCheckStepVO> {

    private AuditCheckStepService auditCheckStepService;
    static final private String[] nameDic = {"stepNo"};
    static final private List<String> bindingWhiteList = Collections.singletonList("name");
    static final private String pageUrl = "auditdb/chkstep/page";
    static final private String newEntityUrl = "auditdb/chkstep/add";
    static final private String editEntityUrl = "auditdb/chkstep/add";
    static final private String listEntityUrl = "auditdb/chkstep/page";
    static final private String searchEntityUrl = "auditdb/chkstep/search";

    @Autowired
    public AuditCheckStepController(AuditCheckStepService auditCheckStepService) {
        super(auditCheckStepService, "org", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, AuditCheckStep.class, AuditCheckStepVO.class, bindingWhiteList);
        this.auditCheckStepService = auditCheckStepService;
    }

    @Override
    protected void InternalSaveNew(AuditCheckStepVO realmodel,
                                   BigInteger updateID, BigInteger pid) throws SaveNewException {

        realmodel.setCheckitemID(pid);
        realmodel.setStepNo(auditCheckStepService.findTopByCheckitemIDOrderByStepNoDesc(pid) + 1);
    }

    @Override
    protected AuditCheckStep InternalSaveUpdate(AuditCheckStepVO realmodel,
                                                BigInteger updateID, BigInteger pid) throws SaveNewException {
        AuditCheckStep auditCheckStep = getService().findOne(updateID);
        BeanUtils.copyProperties(realmodel, auditCheckStep, getNullPropertyNames(realmodel));

        return auditCheckStep;
    }

    @Override
    protected void extendSave(AuditCheckStep po, BigInteger updateID, BigInteger pid) {

    }
}
