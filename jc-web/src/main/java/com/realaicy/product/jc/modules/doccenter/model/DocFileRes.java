package com.realaicy.product.jc.modules.doccenter.model;

import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.realaicy.lib.core.orm.jpa.entity.CommonTreeableDeletableEntity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_m_doc_allinone")
@JsonFilter("realFilter2")
public class DocFileRes extends CommonTreeableDeletableEntity<Long,DocFileRes> {

    /**
     * 资源类型
     */
    @Column(name = "RES_TYPE")
    private short resType;

    /**
     * 资源名称
     */
    @Column(name = "NAME")
    @JsonProperty("title")
    private String name;

    /**
     * 资源URI
     */
    @Column(name = "URI")
    private String uri;

    /**
     * 资源标识字符串(对应用户所持有的权限字符串)
     */
    @Column(name = "IDENTITY")
    private String resIdentity = "";


//    /**
//     * 父亲菜单对象
//     */
//    @ManyToOne
//    @JoinColumn(name = "PID")
//    @JsonIgnore
//    private DocFileRes parent;

    /**
     * 孩子菜单对象
     */
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "parent")
    @OrderBy("resWeight")
    private List<DocFileRes> children = new ArrayList<>();


    public short getResType() {
        return resType;
    }

    public void setResType(short resType) {
        this.resType = resType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public String getResIdentity() {
        return resIdentity;
    }

    public void setResIdentity(String resIdentity) {
        this.resIdentity = resIdentity;
    }

    public List<DocFileRes> getChildren() {
        return children;
    }

    public void setChildren(List<DocFileRes> children) {
        this.children = children;
    }

}
