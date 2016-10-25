package com.realaicy.product.jc.modules.doccenter.service;


import com.realaicy.lib.core.service.BaseServiceWithVO;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocVO;
import com.realaicy.product.jc.modules.system.model.Org;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface DocService extends BaseServiceWithVO<DocRes, BigInteger, DocVO> {

    String updateDocCatalog(BigInteger ID, String title);

    String createDocCatalog(BigInteger ID, String title, Boolean ifSub);

    DocRes findOrgRootDocCatalogID(BigInteger orgID);

    DocRes findByNameWithInAParent(String name, BigInteger pid);


}
