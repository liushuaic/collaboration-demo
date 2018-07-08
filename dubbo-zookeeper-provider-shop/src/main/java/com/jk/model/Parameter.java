package com.jk.model;

import java.io.Serializable;

public class Parameter implements Serializable{

    private static final long serialVersionUID = -6168409886170206970L;

    /* id */
    private String parid;

    /** 名称 */
    private String paraname;

    /** 绑定商品分类关联id */
    private String productcategoryid;

    /** 参数 */
    private String parameters;

    /* 排序 */
    private String order;

    public String getParid() {
        return parid;
    }

    public void setParid(String parid) {
        this.parid = parid;
    }

    public String getParaname() {
        return paraname;
    }

    public void setParaname(String paraname) {
        this.paraname = paraname;
    }

    public String getProductcategoryid() {
        return productcategoryid;
    }

    public void setProductcategoryid(String productcategoryid) {
        this.productcategoryid = productcategoryid;
    }

    public String getParameters() {
        return parameters;
    }

    public void setParameters(String parameters) {
        this.parameters = parameters;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "Parameter{" +
                "parid='" + parid + '\'' +
                ", paraname='" + paraname + '\'' +
                ", productcategoryid='" + productcategoryid + '\'' +
                ", parameters='" + parameters + '\'' +
                ", order='" + order + '\'' +
                '}';
    }
}
