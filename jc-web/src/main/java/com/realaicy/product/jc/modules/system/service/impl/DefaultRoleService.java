package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.repos.RoleRepos;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.lib.core.service.DefaultServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultRoleService extends DefaultServiceImpl<Role, Long>
        implements RoleService {
    @Override
    public List<Role> findAllMenus() {
        return ((RoleRepos) baseRepository).findAll();
    }

    @Override
    public List<Role> getRoleByUser(User user) {
        return null;
    }

    @Override
    public Role findByRoleName(String roleName) {
        return ((RoleRepos) baseRepository).findByRoleName(roleName);
    }
}
