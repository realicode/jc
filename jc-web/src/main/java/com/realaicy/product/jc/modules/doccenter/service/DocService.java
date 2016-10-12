package com.realaicy.product.jc.modules.doccenter.service;


import com.realaicy.lib.core.service.BaseService;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface DocService extends BaseService<DocRes, Long> {

    String updateDocCatalog(Long ID, String title);

    String createDocCatalog(Long ID, String title, Boolean ifSub);

}
