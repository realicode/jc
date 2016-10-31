package com.realaicy.product.jc.modules.auditdb.service;

import com.realaicy.lib.core.service.BaseServiceWithVO;
import com.realaicy.product.jc.modules.auditdb.model.AuditCheckStep;
import com.realaicy.product.jc.modules.auditdb.model.vo.AuditCheckStepVO;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface AuditCheckStepService extends BaseServiceWithVO<AuditCheckStep, BigInteger, AuditCheckStepVO> {

    Integer findTopByCheckitemIDOrderByStepNoDesc(BigInteger checkitemID);
}
