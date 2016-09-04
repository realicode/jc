package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.User;
import org.springframework.data.domain.PageRequest;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface OrgService extends BaseService<Org, Long> {

    Org findByNameWithInAParent(String name, Long pid);

}
