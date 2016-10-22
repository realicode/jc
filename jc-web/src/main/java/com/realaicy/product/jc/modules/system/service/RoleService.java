package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseServiceWithVO;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.vo.RoleVO;

import java.math.BigInteger;
import java.util.Collection;
import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface RoleService extends BaseServiceWithVO<Role, Long, RoleVO> {


    Role findByRoleName(String roleName);

    List<Role> findByOrgIDIn(Collection<BigInteger> orgIDs);

    List<Role> findByOrgID(BigInteger orgID);

    List<Role> findByOrgIDAndDeleteFlag(BigInteger orgID, Boolean deleteFlag);


    Role findByNameWithInAOrg(String name, BigInteger orgid);

}
