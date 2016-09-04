package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.lib.core.orm.jpa.BaseRepository;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.system.model.Org;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface OrgRepos extends BaseRepository<Org, Long> {
    @Query(value = "SELECT * FROM jc_sys_org as org" +
            " WHERE org.pid=:pid and org.name =:name", nativeQuery = true)
    Org findByNameWithInAParent(@Param("name") String name, @Param("pid") Long pid);

}
