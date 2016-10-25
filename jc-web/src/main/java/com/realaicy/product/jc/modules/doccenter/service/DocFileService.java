package com.realaicy.product.jc.modules.doccenter.service;

import com.realaicy.lib.core.service.BaseServiceWithVO;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocFileVO;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface DocFileService extends BaseServiceWithVO<DocFileRes, BigInteger, DocFileVO> {


    DocFileRes findOrgRootDocCatalogID(BigInteger orgID);


}
