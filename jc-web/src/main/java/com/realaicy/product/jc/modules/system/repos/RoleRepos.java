package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.lib.core.orm.jpa.BaseRepository;
import com.realaicy.product.jc.modules.system.model.Role;

import java.math.BigInteger;
import java.util.Collection;
import java.util.List;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface RoleRepos extends BaseRepository<Role, Long> {

    Role findByRoleName(String roleName);

    List<Role> findByOrgIDIn(Collection<BigInteger> orgIDs);

}
