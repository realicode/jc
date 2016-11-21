package com.realaicy.product.jc.modules.project.model.vo;

import com.realaicy.lib.core.model.vo.BaseVO;

import java.util.List;

/**
 * Created by realaicy on 2016/11/21.
 * xxx
 */
public class Manager4Select extends BaseVO{
    private String id;
    private String text;
    private List<Manager4Select> children;

    public List<Manager4Select> getChildren() {
        return children;
    }

    public void setChildren(List<Manager4Select> children) {
        this.children = children;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
