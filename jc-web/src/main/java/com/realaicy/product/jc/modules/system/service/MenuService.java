package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.Menu;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface MenuService extends BaseService<Menu, Long> {


    List<Menu> findUserMenu();
}
