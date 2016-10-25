package com.realaicy.product.jc.modules.doccenter.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocVO;
import com.realaicy.product.jc.modules.doccenter.repos.DocRepos;
import com.realaicy.product.jc.modules.doccenter.service.DocService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
@Transactional
public class DefaultDocService extends DefaultBaseServiceImpl<DocRes, BigInteger>
        implements DocService {


    @Override
    public String updateDocCatalog(BigInteger ID, String title) {

        return "success";
    }

    @Override
    public String createDocCatalog(BigInteger ID, String title, Boolean ifSub) {

        return "success";
    }

    @Override
    public DocRes findOrgRootDocCatalogID(BigInteger orgID) {
        return ((DocRepos) baseRepository).findByOrgIDAndOrgRootFlagAndDeleteFlag(orgID, true, false);
    }

    @Override
    public DocRes findByNameWithInAParent(String name, BigInteger pid) {
        return baseRepository.findByNameWithInAParent(name, pid);
    }

    @Override
    public void saveFromVO(DocRes po, DocVO vo) {

    }
}
