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
    private String orders;

    /** 分类业务字段*/
    private String text;

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

    public String getOrders() {
        return orders;
    }

    public void setOrders(String orders) {
        this.orders = orders;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "Parameter{" +
                "parid='" + parid + '\'' +
                ", paraname='" + paraname + '\'' +
                ", productcategoryid='" + productcategoryid + '\'' +
                ", parameters='" + parameters + '\'' +
                ", orders='" + orders + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
