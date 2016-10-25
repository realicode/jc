package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.lib.core.orm.jpa.BaseRepository;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.Role;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.Collection;
import java.util.List;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface RoleRepos extends BaseRepository<Role, BigInteger> {

    Role findByName(String roleName);

    List<Role> findByOrgID(BigInteger orgID);

    List<Role> findByOrgIDAndDeleteFlag(BigInteger orgID, Boolean deleteFlag);

    List<Role> findByOrgIDIn(Collection<BigInteger> orgIDs);

    @Query(value = "SELECT * FROM jc_sys_role as role" +
            " WHERE role.ORGID=:orgid and role.ROLENAME =:name and role.F_DELETED=0", nativeQuery = true)
    Role findByNameWithInAOrg(@Param("name") String name, @Param("orgid") BigInteger orgid);

}
