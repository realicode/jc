package com.realaicy.product.jc.modules.auditdb.repos;

import com.realaicy.lib.core.orm.jpa.BaseRepository;
import com.realaicy.product.jc.modules.auditdb.model.AuditCheckStep;

import java.math.BigInteger;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface AuditCheckStepRepos extends BaseRepository<AuditCheckStep, BigInteger> {

    AuditCheckStep findTopByCheckitemIDAndDeleteFlagOrderByStepNoDesc(BigInteger checkitemID, Boolean deleteFlag);
}
