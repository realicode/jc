package com.realaicy.product.jc.modules.doccenter.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocFileVO;
import com.realaicy.product.jc.modules.doccenter.service.DocFileService;
import org.springframework.stereotype.Service;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultDocFileService extends DefaultBaseServiceImpl<DocFileRes, BigInteger>
        implements DocFileService {


    @Override
    public void saveFromVO(DocFileRes po, DocFileVO vo) {

    }

    @Override
    public DocFileRes findOrgRootDocCatalogID(BigInteger orgID) {
        return baseRepository.findByOrgIDAndOrgRootFlagAndDeleteFlag(orgID,true,false);
    }
}
