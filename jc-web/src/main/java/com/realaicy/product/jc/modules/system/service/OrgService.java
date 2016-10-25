package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.lib.core.service.BaseServiceWithVO;
import com.realaicy.product.jc.common.security.OrgRestricted;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.vo.OrgVO;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface OrgService extends BaseServiceWithVO<Org, BigInteger, OrgVO>, OrgRestricted<BigInteger> {

    Org findByNameWithInAParent(String name, BigInteger pid);

    List<Org> findByCascadeIDStartingWith(String cascadeID);

    List<BigInteger> findAllChildIDs(@Param("cascadeid") String cascadeid);

}
