package com.realaicy.product.jc.modules.project.service.impl;

import com.realaicy.lib.core.service.impl.DefaultBaseServiceImpl;
import com.realaicy.product.jc.modules.project.model.PJInforBasic;
import com.realaicy.product.jc.modules.project.model.vo.PJInforBasicVO;
import com.realaicy.product.jc.modules.project.service.PJInforBasicService;
import org.springframework.stereotype.Service;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
@Service
public class DefaultPJInforBasicService extends DefaultBaseServiceImpl<PJInforBasic, BigInteger>
        implements PJInforBasicService {

    @Override
    public void saveFromVO(PJInforBasic pjInforBasic, PJInforBasicVO pjInforBasicVO) {

    }
}
