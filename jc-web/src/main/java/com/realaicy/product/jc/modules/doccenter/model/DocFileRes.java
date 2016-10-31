package com.realaicy.product.jc.modules.doccenter.model;

import com.realaicy.lib.core.orm.jpa.entity.CommonDeletableEntity;
import com.realaicy.lib.core.orm.plugin.IOrgRestricted;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigInteger;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_m_doc_file")
public class DocFileRes extends CommonDeletableEntity<BigInteger> implements IOrgRestricted {

    /**
     * 文件所属文件夹ID
     */
    @Column(name = "CATALOGID")
    private BigInteger catalogID;

    /**
     * 文件所属模块
     */
    @Column(name = "MODULE")
    private String module;
    /**
     * 文件所属文件夹语义ID
     */
    @Column(name = "CAT_CASCADE_ID")
    private String catCascadeID;
    /**
     * 资源类型
     */
    @Column(name = "RES_TYPE")
    private short resType;
    /**
     * 资源名称
     */
    @Column(name = "NAME")
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

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getCatCascadeID() {
        return catCascadeID;
    }

    public void setCatCascadeID(String catCascadeID) {
        this.catCascadeID = catCascadeID;
    }

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

    public BigInteger getCatalogID() {
        return catalogID;
    }

    public void setCatalogID(BigInteger catalogID) {
        this.catalogID = catalogID;
    }
}
