package com.realaicy.product.jc.modules.doccenter.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocVO;
import com.realaicy.product.jc.modules.doccenter.repos.DocRepos;
import com.realaicy.product.jc.modules.doccenter.service.DocService;
import org.springframework.stereotype.Service;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultDocService extends DefaultBaseServiceImpl<DocRes, Long>
        implements DocService {


    @Override
    public String updateDocCatalog(Long ID, String title) {

        return "success";
    }

    @Override
    public String createDocCatalog(Long ID, String title, Boolean ifSub) {

        return "success";
    }

    @Override
    public DocRes findOrgRootDocCatalogID(BigInteger orgID) {
        return ((DocRepos) baseRepository).findByOrgIDAndOrgRootFlagAndDeleteFlag(orgID, true, false);
    }

    @Override
    public void saveFromVO(DocRes po, DocVO vo) {

    }
}
