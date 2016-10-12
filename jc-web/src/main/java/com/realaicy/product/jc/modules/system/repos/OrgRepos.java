package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.lib.core.orm.jpa.BaseRepository;
import com.realaicy.product.jc.modules.system.model.Org;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface OrgRepos extends BaseRepository<Org, Long> {

    @Query(value = "SELECT * FROM jc_sys_org as org" +
            " WHERE org.pid=:pid and org.name =:name and org.F_DELETED=0", nativeQuery = true)
    Org findByNameWithInAParent(@Param("name") String name, @Param("pid") Long pid);

    @Query(value = "SELECT id FROM jc_sys_org as org" +
            " WHERE org.CASCADE_ID like :cascadeid and org.F_DELETED = 0", nativeQuery = true)
    List<BigInteger> findAllChildIDs(@Param("cascadeid") String cascadeid);

    /*@Override
    @Query("select e FROM  Org e where e.id=?1 and e.deleteFlag=false ")
    Org findOne(Long id);*/

    List<Org> findByCascadeIDStartingWith(String cascadeID);
}
