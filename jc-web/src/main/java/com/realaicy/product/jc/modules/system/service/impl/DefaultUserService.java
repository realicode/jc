package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.tna.modules.core.service.DefaultServiceImpl;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
    public List<User> findAllMenus() {
        return ((UserRepos) baseRepository).findAll();
    }

    @Override
    public User findByName(String username) {
        return ((UserRepos) baseRepository).findByUsername(username);
    }

    @Override
    public List<User> findAllUsersWithPage(PageRequest pageRequest) {

        return ((UserRepos) baseRepository).findAll(pageRequest).getContent();
    }

    @Override
    public Page<User> findTemp(Pageable pageable) {
        return ((UserRepos) baseRepository).findAll(pageable);
    }
}
