package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.lib.core.service.DefaultServiceImpl;
import com.realaicy.product.jc.modules.system.model.Menu;
import com.realaicy.product.jc.modules.system.repos.MenuRepos;
import com.realaicy.product.jc.modules.system.service.MenuService;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
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
public class DefaultMenuService extends DefaultServiceImpl<Menu, Long>
        implements MenuService {

    //private Logger log = LoggerFactory.getLogger(getClass());


    private final RoleService roleService;

    @Autowired
    public DefaultMenuService(RoleService roleService) {
        this.roleService = roleService;
    }

    @Override
    @Cacheable(key = "T(com.realaicy.product.jc.uitl.SpringSecurityUtil).getNameOfCurrentPrincipal()", cacheResolver = "runtimeCacheResolver")
    public List<Menu> findUserMenu() {

        List<Menu> allMenus = ((MenuRepos) baseRepository).findAllMenus();
        List<Menu> filteredMenus = new LinkedList<>();

        //如果是超级用户返回所有
        if (Objects.equals(SpringSecurityUtil.getNameOfCurrentPrincipal(), "realaicy")) {
            return allMenus;
        } else {

            Set<String> hashSet = new HashSet<>();
            //noinspection ConstantConditions
            for (GrantedAuthority grantedAuthority : SpringSecurityUtil.getCurrentUserDetails().getAuthorities()) {
                Collections.addAll(hashSet, roleService.findByRoleName(grantedAuthority.getAuthority()).getMenus().split(","));
            }

            for (Menu menu : allMenus) {
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

                    assert menu2 != null;
                    menu2.setChildren(subMenu);
                    filteredMenus.add(menu2);
                }
            }
            return filteredMenus;
        }

    }
}
