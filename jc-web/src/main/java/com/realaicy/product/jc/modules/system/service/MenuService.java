package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.Menu;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface MenuService extends BaseService<Menu, BigInteger> {


    List<Menu> findUserMenu();
}
