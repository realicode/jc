package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.tna.modules.core.orm.jpa.BaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface UserRepos extends BaseRepository<User, Long> {

    User findByUsername(String username);

}
