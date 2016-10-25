package com.realaicy.product.jc.modules.project.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.project.model.ProjectInfo;
import com.realaicy.product.jc.modules.project.service.ProjectInfoService;
import org.springframework.stereotype.Service;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultProjectInfoService extends DefaultBaseServiceImpl<ProjectInfo, BigInteger>
        implements ProjectInfoService {

}
