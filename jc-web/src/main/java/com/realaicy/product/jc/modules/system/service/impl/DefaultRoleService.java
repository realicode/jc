package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.lib.core.service.DefaultServiceImpl;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.repos.RoleRepos;
import com.realaicy.product.jc.modules.system.service.RoleService;
import org.springframework.stereotype.Service;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultRoleService extends DefaultServiceImpl<Role, Long>
        implements RoleService {

    @Override
    public Role findByRoleName(String roleName) {
        return ((RoleRepos) baseRepository).findByRoleName(roleName);
    }
}
