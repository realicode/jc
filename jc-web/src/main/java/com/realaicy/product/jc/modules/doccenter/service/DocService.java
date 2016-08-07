package com.realaicy.product.jc.modules.doccenter.service;

import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.lib.core.service.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface DocService extends BaseService<DocRes, Long> {

    public String updateDocCatalog(Long ID, String title);

    public String createDocCatalog(Long ID, String title, Boolean ifSub);

}
