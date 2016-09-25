package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.lib.core.service.DefaultServiceImpl;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.model.UserSec;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import com.realaicy.product.jc.modules.system.repos.UserSecRepos;
import com.realaicy.product.jc.modules.system.service.UserSecService;
import com.realaicy.product.jc.modules.system.service.UserService;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
@Transactional
public class DefaultUserSecService extends DefaultServiceImpl<UserSec, Long>
        implements UserSecService {

    @Override
    public UserSec findByUsername(String username) {
        return ((UserSecRepos) baseRepository).findByUsername(username);
    }
}
