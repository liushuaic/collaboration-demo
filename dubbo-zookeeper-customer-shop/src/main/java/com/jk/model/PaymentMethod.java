package com.jk.model;

import java.io.Serializable;

public class PaymentMethod implements Serializable{


    private static final long serialVersionUID = 8485452760578753309L;

    /* id */
    private  String pmid;

    /** 名称 */
    private String name;

    /** 方式 1 在线支付  2 线下支付 */
    private String method;

    /** 超时时间 */
    private Integer timeout;

    /** 图标 */
    private String icon;

    /** 介绍 */
    private String description;

    /** 内容 */
    private String content;

    /** 支持配送方式 ShippingMethod 关联id*/
    private String  shippingmethodsid;

    /** 订单关联id */
    private String ordersid;

    public String getPmid() {
        return pmid;
    }

    public void setPmid(String pmid) {
        this.pmid = pmid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public Integer getTimeout() {
        return timeout;
    }

    public void setTimeout(Integer timeout) {
        this.timeout = timeout;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getShippingmethodsid() {
        return shippingmethodsid;
    }

    public void setShippingmethodsid(String shippingmethodsid) {
        this.shippingmethodsid = shippingmethodsid;
    }

    public String getOrdersid() {
        return ordersid;
    }

    public void setOrdersid(String ordersid) {
        this.ordersid = ordersid;
    }

    @Override
    public String toString() {
        return "PaymentMethod{" +
                "pmid='" + pmid + '\'' +
                ", name='" + name + '\'' +
                ", method='" + method + '\'' +
                ", timeout=" + timeout +
                ", icon='" + icon + '\'' +
                ", description='" + description + '\'' +
                ", content='" + content + '\'' +
                ", shippingmethodsid='" + shippingmethodsid + '\'' +
                ", ordersid='" + ordersid + '\'' +
                '}';
    }
}
