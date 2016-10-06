package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.system.model.Org;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface OrgService extends BaseService<Org, Long> {

    Org findByNameWithInAParent(String name, Long pid);

}
