package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.system.model.UserSec;
import com.realaicy.product.jc.modules.system.repos.UserSecRepos;
import com.realaicy.product.jc.modules.system.service.UserSecService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
@Transactional
public class DefaultUserSecService extends DefaultBaseServiceImpl<UserSec, BigInteger>
        implements UserSecService {

    @Override
    public UserSec findByUsername(String username) {
        return ((UserSecRepos) baseRepository).findByUsername(username);
    }
}
