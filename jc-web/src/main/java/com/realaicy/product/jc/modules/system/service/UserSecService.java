package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.UserSec;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface UserSecService extends BaseService<UserSec, Long> {

    UserSec findByUsername(String username);
}
