package com.realaicy.product.jc.modules.system.service;

import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.lib.core.service.BaseService;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface RoleService extends BaseService<Role, Long> {
    List<Role> findAllMenus();

    List<Role> getRoleByUser(User user);

    Role findByRoleName(String roleName);

}
