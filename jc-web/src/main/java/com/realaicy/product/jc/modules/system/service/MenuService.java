package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.Menu;
import com.realaicy.product.jc.modules.system.model.User;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.data.domain.PageRequest;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface MenuService extends BaseService<Menu, Long> {


    List<Menu> findUserMenu();
}