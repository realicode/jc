package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.lib.core.service.DefaultServiceImpl;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import com.realaicy.product.jc.modules.system.service.UserService;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultUserService extends DefaultServiceImpl<User, Long>
        implements UserService {


    @Override
    public User findByName(String username) {
        return ((UserRepos) baseRepository).findByUsername(username);
    }

    @Override
    public List<User> findAllUsersWithPage(PageRequest pageRequest) {

        return baseRepository.findAll(pageRequest).getContent();
    }


}
