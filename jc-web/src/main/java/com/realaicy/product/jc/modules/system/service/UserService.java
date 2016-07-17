package com.realaicy.product.jc.modules.system.service;

import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.tna.modules.core.service.BaseService;
import org.springframework.data.domain.PageRequest;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface UserService extends BaseService<User, Long> {
    List<User> findAllMenus();

    User findByName(String username);

    List<User> findAllUsersWithPage(PageRequest pageRequest);
}
