package com.realaicy.product.jc.modules.doccenter.service;


import com.realaicy.lib.core.service.BaseServiceWithVO;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocVO;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface DocService extends BaseServiceWithVO<DocRes, Long, DocVO> {

    String updateDocCatalog(Long ID, String title);

    String createDocCatalog(Long ID, String title, Boolean ifSub);

    DocRes findOrgRootDocCatalogID(BigInteger orgID);

}
