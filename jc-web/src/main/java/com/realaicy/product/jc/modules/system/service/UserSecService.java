package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.UserSec;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface UserSecService extends BaseService<UserSec, BigInteger> {

    UserSec findByUsername(String username);
}
