package com.realaicy.product.jc.modules.checkdb.service.impl;

import com.realaicy.product.jc.modules.checkdb.model.CheckItemDB;
import com.realaicy.product.jc.modules.checkdb.repos.CheckItemDBRepos;
import com.realaicy.product.jc.modules.checkdb.service.CheckItemDBService;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.repos.DocRepos;
import com.realaicy.product.jc.realglobal.config.StaticParams;
import com.realaicy.tna.modules.core.service.DefaultServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultCheckItemDBService extends DefaultServiceImpl<CheckItemDB, Long>
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
