package com.jk.model;

import java.io.Serializable;

/*  商品属性 */
public class Attribute  implements Serializable{

    private static final long serialVersionUID = 8483952138227045101L;

    /* id */
    private String atid;

    /** 名称 */
    private String name;

    /** 属性序号 */
    private Integer propertyindex;

    /** 绑定分类 */
    private String  productcategoryid;

    /** 可选项 */
    private String  options ;

    /* 业务字段  分类名称*/
    private String   text;
    public String getAtid() {
        return atid;
    }

    public void setAtid(String atid) {
        this.atid = atid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPropertyindex() {
        return propertyindex;
    }

    public void setPropertyindex(Integer propertyindex) {
        this.propertyindex = propertyindex;
    }

    public String getProductcategoryid() {
        return productcategoryid;
    }

    public void setProductcategoryid(String productcategoryid) {
        this.productcategoryid = productcategoryid;
    }

    public String getOptions() {
        return options;
    }

    public void setOptions(String options) {
        this.options = options;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "Attribute{" +
                "atid='" + atid + '\'' +
                ", name='" + name + '\'' +
                ", propertyindex=" + propertyindex +
                ", productcategoryid='" + productcategoryid + '\'' +
                ", options='" + options + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
