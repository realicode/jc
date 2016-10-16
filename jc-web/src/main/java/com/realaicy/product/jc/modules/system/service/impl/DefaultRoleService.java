package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.repos.RoleRepos;
import com.realaicy.product.jc.modules.system.service.RoleService;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.Collection;
import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultRoleService extends DefaultBaseServiceImpl<Role, Long>
        implements RoleService {

    @Override
    public Role findByRoleName(String roleName) {
        return ((RoleRepos) baseRepository).findByName(roleName);
    }

    @Override
    public List<Role> findByOrgIDIn(Collection<BigInteger> orgIDs) {
        return ((RoleRepos) baseRepository).findByOrgIDIn(orgIDs);
    }

    @Override
    public List<Role> findByOrgID(BigInteger orgID) {
        return ((RoleRepos) baseRepository).findByOrgID(orgID);
    }

    @Override
    public Role findByNameWithInAOrg(String name, BigInteger orgIDs) {
        return ((RoleRepos) baseRepository).findByNameWithInAOrg(name, orgIDs);
    }
}
