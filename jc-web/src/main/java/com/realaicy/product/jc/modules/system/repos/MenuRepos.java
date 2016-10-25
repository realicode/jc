package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.lib.core.orm.jpa.BaseRepository;
import com.realaicy.product.jc.modules.system.model.Menu;
import org.springframework.data.jpa.repository.Query;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
@SuppressWarnings("JpaQlInspection")
public interface MenuRepos extends BaseRepository<Menu, BigInteger> {


    /**
     * Find menus by user.
     *
     * @return the list
     */
    @Query(value = "SELECT menu FROM Menu menu" +
            " WHERE menu.parent.id=1 ORDER By menu.resWeight ")
    List<Menu> findAllMenus();

}
