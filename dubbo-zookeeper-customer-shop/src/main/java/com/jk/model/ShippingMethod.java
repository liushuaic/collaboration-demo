package com.jk.model;

import java.io.Serializable;

public class ShippingMethod implements Serializable{

    private static final long serialVersionUID = 4700031625006694448L;
    /* id */
    private String smid;

    /** 名称 */
    private String smname;

    /** 首重量 */
    private Integer firstweight;

    /** 续重量 */
    private Integer continueweight;

    /** 首重价格 */
    private Double firstprice;

    /** 续重价格 */
    private Double continueprice;

    /** 图标 */
    private String icon;

    /** 介绍 */
    private String description;

    /** 默认物流公司关联id DeliveryCorp*/
    private  String deliveryid;


    /** 订单 */
    private String  ordersid ;

    public String getSmid() {
        return smid;
    }

    public void setSmid(String smid) {
        this.smid = smid;
    }

    public String getSmname() {
        return smname;
    }

    public void setSmname(String smname) {
        this.smname = smname;
    }

    public Integer getFirstweight() {
        return firstweight;
    }

    public void setFirstweight(Integer firstweight) {
        this.firstweight = firstweight;
    }

    public Integer getContinueweight() {
        return continueweight;
    }

    public void setContinueweight(Integer continueweight) {
        this.continueweight = continueweight;
    }

    public Double getFirstprice() {
        return firstprice;
    }

    public void setFirstprice(Double firstprice) {
        this.firstprice = firstprice;
    }

    public Double getContinueprice() {
        return continueprice;
    }

    public void setContinueprice(Double continueprice) {
        this.continueprice = continueprice;
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

    public String getDeliveryid() {
        return deliveryid;
    }

    public void setDeliveryid(String deliveryid) {
        this.deliveryid = deliveryid;
    }

    public String getOrdersid() {
        return ordersid;
    }

    public void setOrdersid(String ordersid) {
        this.ordersid = ordersid;
    }

    @Override
    public String toString() {
        return "ShippingMethod{" +
                "smid='" + smid + '\'' +
                ", smname='" + smname + '\'' +
                ", firstweight=" + firstweight +
                ", continueweight=" + continueweight +
                ", firstprice=" + firstprice +
                ", continueprice=" + continueprice +
                ", icon='" + icon + '\'' +
                ", description='" + description + '\'' +
                ", deliveryid='" + deliveryid + '\'' +
                ", ordersid='" + ordersid + '\'' +
                '}';
    }
}
