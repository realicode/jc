package com.realaicy.product.jc.modules.checkdb.model;

import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.realaicy.lib.core.orm.jpa.entity.BaseEntity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_m_checkdb_all")
@JsonFilter("realFilterCheckDB")
@NamedNativeQueries({
        //@NamedNativeQuery(name = "realTestNativeQuery", query = "SELECT a.firstname, a.lastname FROM Author a"),
        //@NamedNativeQuery(name = "realTestNativeQuery", query = "SELECT a.id, a.name FROM jc_common_tree a",
        //resultClass = DocRes.class)
        //@NamedNativeQuery(name = "selectAuthorValue", query = "SELECT a.id, a.firstname, a.lastname, count(b.id)
        // as numBooks FROM Author a JOIN BookAuthor ba on a.id = ba.authorid JOIN Book b ON b.id = ba.bookid GROUP BY a.id",
        // resultSetMapping = "AuthorValueMapping")
})
public class CheckItemDB extends BaseEntity<Long> {

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
     * 资源图标
     */
    @Column(name = "RES_ICON")
    private Short resIcon;

    /**
     * 资源排序权值
     */
    @Column(name = "RES_WEIGHT")
    private Short resWeight;

    /**
     * 是否显示
     */
    @Column(name = "IS_SHOW")
    private Boolean isShow = Boolean.FALSE;

    /**
     * 资源是否是叶子节点
     */
    @Column(name = "IS_FOLDER")
    @JsonProperty("folder")
    private Boolean isFolder = Boolean.FALSE;

    /**
     * 资源是否自动展开子孙节点
     */
    @Column(name = "IS_AUTO_EXPAND")
    @JsonProperty("expanded")
    private Boolean isAutoExpand = Boolean.FALSE;

    /**
     * 资源状态
     */
    @Column(name = "STATUS")
    private short status = 1;

    /**
     * 资源标识字符串(对应用户所持有的权限字符串)
     */
    @Column(name = "IDENTITY")
    private String resIdentity = "";

    /**
     * 自定义扩展
     */

    @Column(name = "CASCADE_ID")
    private String cascadeID = "";

    /**
     * 父亲菜单对象
     */
    @ManyToOne
    @JoinColumn(name = "PID")
    @JsonIgnore
    private CheckItemDB parent;

    /**
     * 孩子菜单对象
     */
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "parent")
    @OrderBy("resWeight")
    private List<CheckItemDB> children = new ArrayList<>();

    public String getCascadeID() {
        return cascadeID;
    }

    public void setCascadeID(String cascadeID) {
        this.cascadeID = cascadeID;
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

    public Short getResIcon() {
        return resIcon;
    }

    public void setResIcon(Short resIcon) {
        this.resIcon = resIcon;
    }

    public Short getResWeight() {
        return resWeight;
    }

    public void setResWeight(Short resWeight) {
        this.resWeight = resWeight;
    }

    public Boolean getShow() {
        return isShow;
    }

    public void setShow(Boolean show) {
        isShow = show;
    }

    public Boolean getFolder() {
        return isFolder;
    }

    public void setFolder(Boolean folder) {
        isFolder = folder;
    }

    public Boolean getAutoExpand() {
        return isAutoExpand;
    }

    public void setAutoExpand(Boolean autoExpand) {
        isAutoExpand = autoExpand;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    public String getResIdentity() {
        return resIdentity;
    }

    public void setResIdentity(String resIdentity) {
        this.resIdentity = resIdentity;
    }

    public CheckItemDB getParent() {
        return parent;
    }

    public void setParent(CheckItemDB parent) {
        this.parent = parent;
    }

    public List<CheckItemDB> getChildren() {
        return children;
    }

    public void setChildren(List<CheckItemDB> children) {
        this.children = children;
    }

}
