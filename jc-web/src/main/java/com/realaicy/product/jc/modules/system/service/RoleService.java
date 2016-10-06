package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.Role;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface RoleService extends BaseService<Role, Long> {


    Role findByRoleName(String roleName);

}
