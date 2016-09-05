package com.realaicy.product.jc.modules.project.service.impl;

import com.realaicy.lib.core.service.DefaultServiceImpl;
import com.realaicy.product.jc.modules.project.model.PJApply;
import com.realaicy.product.jc.modules.project.service.PJApplyService;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import com.realaicy.product.jc.modules.system.service.UserService;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultPJApplyService extends DefaultServiceImpl<PJApply, Long>
        implements PJApplyService {


}
