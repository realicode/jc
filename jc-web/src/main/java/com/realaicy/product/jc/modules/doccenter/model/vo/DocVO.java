package com.realaicy.product.jc.modules.doccenter.model.vo;

import com.realaicy.lib.core.model.vo.BaseVO;

import javax.validation.constraints.NotNull;

/**
 * Created by realaicy on 2016/10/16.
 * <p>
 * xxs
 */
public class DocVO extends BaseVO<Long> {

    /**
     * 角色名称
     */
    @NotNull
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
