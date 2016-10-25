package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.lib.core.orm.jpa.BaseRepository;
import com.realaicy.product.jc.modules.system.model.UserSec;

import java.math.BigInteger;

/**
 * Created by realaicy on 2016/3/13.
 * XXX
 */
public interface UserSecRepos extends BaseRepository<UserSec, BigInteger> {

    UserSec findByUsername(String username);

}
