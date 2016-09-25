package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.lib.core.orm.jpa.BaseRepository;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.system.model.Menu;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface MenuRepos extends BaseRepository<Menu, Long> {


    /**
     * Find menus by user.
     *
     * @return the list
     */
    @Query(value = "SELECT menu FROM Menu menu" +
            " WHERE menu.parent.id=1 ORDER By menu.resWeight ")
    List<Menu> findAllMenus();


    @Query(value = "select * from jc_m_doc_allinone as a where a.id=:id", nativeQuery = true)
    DocRes findAResWithNative(@Param("id") Long id);


}
