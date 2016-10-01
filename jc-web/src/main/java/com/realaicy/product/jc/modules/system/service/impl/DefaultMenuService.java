package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.lib.core.service.DefaultServiceImpl;
import com.realaicy.product.jc.modules.system.model.Menu;
import com.realaicy.product.jc.modules.system.repos.MenuRepos;
import com.realaicy.product.jc.modules.system.service.MenuService;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
@CacheConfig(cacheNames = "demo")
public class DefaultMenuService extends DefaultServiceImpl<Menu, Long>
        implements MenuService {

    private Logger log = LoggerFactory.getLogger(getClass());


    @Autowired
    private RoleService roleService;

    @Override
    @Cacheable(value = "demo", key = "T(com.realaicy.product.jc.uitl.SpringSecurityUtil).getNameOfCurrentPrincipal()")
    public List<Menu> findUserMenu() {

        log.info("findUserMenu------------start");

        List<Menu> allMenus = ((MenuRepos) baseRepository).findAllMenus();
        List<Menu> filteredMenus = new LinkedList<>();

        if (SpringSecurityUtil.getNameOfCurrentPrincipal().equals("realaicy")) {
            log.info("findUserMenu------------end");

            return allMenus;
        } else {
            Set<String> hashSet = new HashSet<>();
            for (GrantedAuthority grantedAuthority : SpringSecurityUtil.getCurrentUserDetails().getAuthorities()) {
                Collections.addAll(hashSet, roleService.findByRoleName(grantedAuthority.getAuthority()).getMenus().split(","));
            }

            for (int j = 0; j < allMenus.size(); j++) {
                Menu menu = allMenus.get(j);
                Menu menu2 = null;
                if (hashSet.contains(menu.getId().toString())) {
                    try {
                        menu2 = (Menu) menu.clone();
                    } catch (CloneNotSupportedException e) {
                        e.printStackTrace();
                    }
                    List<Menu> subMenu = new LinkedList<>();

                    for (int i = 0; i < menu.getChildren().size(); i++) {
                        Menu subMenuTemp = menu.getChildren().get(i);
                        if (hashSet.contains(subMenuTemp.getId().toString())) {
                            subMenu.add(subMenuTemp);
                        }
                    }

                    menu2.setChildren(subMenu);
                    filteredMenus.add(menu2);
                }

//                if (menu.getChildren().size() > 0) {
//                    for (Menu menu1 : menu.getChildren()) {
//                        if (!hashSet.contains(menu1.getId().toString())) {
//                            menu.getChildren().remove(menu1);
//                        }
//                    }
//                }
            }
            log.info("findUserMenu------------end");
            return filteredMenus;
        }

    }
}
