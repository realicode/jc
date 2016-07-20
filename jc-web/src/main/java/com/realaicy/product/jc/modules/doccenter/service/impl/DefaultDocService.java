package com.realaicy.product.jc.modules.doccenter.service.impl;

import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.repos.DocRepos;
import com.realaicy.product.jc.modules.doccenter.service.DocService;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.config.StaticParams;
import com.realaicy.tna.modules.core.service.DefaultServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultDocService extends DefaultServiceImpl<DocRes, Long>
        implements DocService {

    @Autowired
    DocRepos docRepos;

    @Override
    public String updateDocCatalog(Long ID, String title) {
        DocRes docRes = docRepos.findOne(ID);
        docRes.setName(title);
        docRepos.saveAndFlush(docRes);
        return "success";
    }

    @Override
    public String createDocCatalog(Long ID, String title, Boolean ifSub) {
        DocRes docResParent;
        if (ifSub) {
            docResParent = docRepos.findOne(ID);
        } else {
            docResParent = docRepos.findOne(ID).getParent();
        }

        DocRes docRes = new DocRes();
        docRes.setName(title);
        docRes.setFolder(Boolean.TRUE);
        docRes.setAutoExpand(true);
        docRes.setCreateTime(new Date());
        docRes.setCreaterID(1L);
        docRes.setUpdaterID(1L);
        docRes.setUpdateTime(new Date());
        //docRes.setName("测试文档目录层2" + new Date());
        docRes.setResType(Short.valueOf("1"));
        docRes.setCascadeID("1.005.001.001.001.0000001");
        docRes.setFolder(true);
        docRes.setResWeight(StaticParams.CONSTVAR.DEFAULT_RESWeight);
        docRes.setParent(docResParent);
        docRepos.saveAndFlush(docRes);
        return "success";
    }
}