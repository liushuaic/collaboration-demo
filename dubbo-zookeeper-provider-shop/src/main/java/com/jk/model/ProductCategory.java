package com.jk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ProductCategory implements Serializable {

    private static final long serialVersionUID = -9142597067201167143L;

    /** 主键id */
    private String id ;

    /** 名称 */
    private String text;

    /** 上级分类 */
    private String pid;

    /** 树路径 */
    private String url;

    /** 页面标题 */
    private String seoTitle;

    /** 页面关键词 */
    private String seoKeywords;

    /** 页面描述 */
    private String seoDescription;

    private List<ProductCategory> children=new ArrayList<ProductCategory>();

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

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getSeoTitle() {
        return seoTitle;
    }

    public void setSeoTitle(String seoTitle) {
        this.seoTitle = seoTitle;
    }

    public String getSeoKeywords() {
        return seoKeywords;
    }

    public void setSeoKeywords(String seoKeywords) {
        this.seoKeywords = seoKeywords;
    }

    public String getSeoDescription() {
        return seoDescription;
    }

    public void setSeoDescription(String seoDescription) {
        this.seoDescription = seoDescription;
    }

    public List<ProductCategory> getChildren() {
        return children;
    }

    public void setChildren(List<ProductCategory> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "ProductCategory{" +
                "id='" + id + '\'' +
                ", text='" + text + '\'' +
                ", pid='" + pid + '\'' +
                ", url='" + url + '\'' +
                ", seoTitle='" + seoTitle + '\'' +
                ", seoKeywords='" + seoKeywords + '\'' +
                ", seoDescription='" + seoDescription + '\'' +
                ", children=" + children +
                '}';
    }
}
