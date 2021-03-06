package com.realaicy.product.jc.modules.system.service.impl;


import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.vo.OrgVO;
import com.realaicy.product.jc.modules.system.repos.OrgRepos;
import com.realaicy.product.jc.modules.system.service.OrgService;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
@Transactional
public class DefaultOrgService extends DefaultBaseServiceImpl<Org, BigInteger>
        implements OrgService {

    @Override
    public Org findByNameWithInAParent(String name, BigInteger pid) {
        return ((OrgRepos) baseRepository).findByNameWithInAParent(name, pid);
    }

    @Override
    public List<Org> findByCascadeIDStartingWith(String cascadeID) {
        return ((OrgRepos) baseRepository).findByCascadeIDStartingWith(cascadeID);
    }

    @Override
    public List<BigInteger> findAllChildIDs(@Param("cascadeid") String cascadeid) {
        return ((OrgRepos) baseRepository).findAllChildIDs(cascadeid + "%");
    }


    @Override
    public boolean withinOrgRestrict(BigInteger id) {

        //noinspection ConstantConditions
        return findOne(id).getCascadeID().startsWith(SpringSecurityUtil.getCurrentRealUserDetails().getOrgCascadeID());
    }

    @Override
    public void saveFromVO(Org po, OrgVO vo) {
    }
}
