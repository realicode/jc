package com.realaicy.product.jc.modules.doccenter.service;

import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface DocFileService extends BaseService<DocFileRes, Long> {

    String updateDocCatalog(Long ID, String title);

    String createDocCatalog(Long ID, String title, Boolean ifSub);

}
