package com.realaicy.product.jc.modules.system.service.impl;

import com.realaicy.lib.core.service.DefaultServiceImpl;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.repos.OrgRepos;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import com.realaicy.product.jc.modules.system.service.OrgService;
import com.realaicy.product.jc.modules.system.service.UserService;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultOrgService extends DefaultServiceImpl<Org, Long>
        implements OrgService {

    @Override
    public Org findByNameWithInAParent(String name, Long pid) {
        return ((OrgRepos) baseRepository).findByNameWithInAParent(name, pid);
    }
}
