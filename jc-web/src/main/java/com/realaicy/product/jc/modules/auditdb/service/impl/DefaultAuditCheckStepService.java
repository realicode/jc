package com.realaicy.product.jc.modules.auditdb.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.auditdb.model.AuditCheckStep;
import com.realaicy.product.jc.modules.auditdb.model.vo.AuditCheckStepVO;
import com.realaicy.product.jc.modules.auditdb.repos.AuditCheckStepRepos;
import com.realaicy.product.jc.modules.auditdb.service.AuditCheckStepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultAuditCheckStepService extends DefaultBaseServiceImpl<AuditCheckStep, BigInteger>
        implements AuditCheckStepService {

    private final AuditCheckStepRepos auditCheckStepRepos;

    @Autowired
    public DefaultAuditCheckStepService(AuditCheckStepRepos auditCheckStepRepos) {
        this.auditCheckStepRepos = auditCheckStepRepos;
    }

    @Override
    public void saveFromVO(AuditCheckStep po, AuditCheckStepVO vo) {

    }

    @Override
    public Integer findTopByCheckitemIDOrderByStepNoDesc(BigInteger checkitemID) {
        return auditCheckStepRepos.findTopByCheckitemIDAndDeleteFlagOrderByStepNoDesc(checkitemID, false).getStepNo();
    }
}
