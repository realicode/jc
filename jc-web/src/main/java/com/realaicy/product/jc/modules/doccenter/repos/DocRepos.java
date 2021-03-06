package com.realaicy.product.jc.modules.doccenter.repos;

import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.lib.core.orm.jpa.BaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface DocRepos extends BaseRepository<DocRes, BigInteger> {


    /**
     * Find menus by user.
     *
     * @return the list
     */
    @Query(value = "SELECT docRes FROM DocRes docRes" +
            " WHERE docRes.parent.id=1 and docRes.id!=1 and docRes.resType = '1' ORDER By docRes.resWeight ")
    List<DocRes> findAllMenus();

    @Query(value = "select * from jc_m_doc_allinone as a where a.id=:id", nativeQuery = true)
    DocRes findAResWithNative(@Param("id") Long id);

    DocRes findByOrgIDAndOrgRootFlagAndDeleteFlag(BigInteger orgID, Boolean orgRootFlag, Boolean deleteFlag);
}
