package com.realaicy.product.jc.modules.system.model.vo;

import com.realaicy.lib.core.model.vo.BaseVO;

import java.util.List;

/**
 * Created by realaicy on 2016/10/16.
 * <p>
 * xxs
 */
public class User2RoleVO extends BaseVO<Long> {

    private String orgName;
    private Long id;
    private boolean selected;

    private List<User2RoleVO> children;

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public List<User2RoleVO> getChildren() {
        return children;
    }

    public void setChildren(List<User2RoleVO> children) {
        this.children = children;
    }
}
