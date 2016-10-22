package com.realaicy.product.jc.modules.checkdb.service;

import com.realaicy.product.jc.modules.checkdb.model.CheckItemDB;
import com.realaicy.lib.core.service.BaseService;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface CheckItemDBService extends BaseService<CheckItemDB, Long> {

    public String updateCatalog(Long ID, String title);

}
