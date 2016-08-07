package com.realaicy.product.jc.modules.doccenter.service;

import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.repos.DocFileRepos;
import com.realaicy.lib.core.service.BaseService;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface DocFileService extends BaseService<DocFileRes, Long> {

    public String updateDocCatalog(Long ID, String title);

    public String createDocCatalog(Long ID, String title, Boolean ifSub);

}
