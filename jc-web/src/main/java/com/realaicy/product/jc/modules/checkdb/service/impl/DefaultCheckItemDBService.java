package com.realaicy.product.jc.modules.checkdb.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.checkdb.model.CheckItemDB;
import com.realaicy.product.jc.modules.checkdb.repos.CheckItemDBRepos;
import com.realaicy.product.jc.modules.checkdb.service.CheckItemDBService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultCheckItemDBService extends DefaultBaseServiceImpl<CheckItemDB, Long>
        implements CheckItemDBService {

    @Autowired
    CheckItemDBRepos checkItemDBRepos;

    @Override
    public String updateCatalog(Long ID, String title) {
        CheckItemDB checkItemDB = checkItemDBRepos.findOne(ID);
        checkItemDB.setName(title);
        checkItemDBRepos.saveAndFlush(checkItemDB);
        return "success";
    }


}
