package com.jk.model;

import java.io.Serializable;


/* 订单项 */
public class OrderItem implements Serializable {

    private static final long serialVersionUID = 4079770331961033738L;

    /* id */
    private String oiid;

    /** 商品编号 */
    private String oicode;

    /** 商品名称 */
    private String pocname;

    /** 商品全称 */
    private String fullname;

    /** 商品价格 */
    private Double price;

    /** 商品重量 */
    private Integer weight;

    /** 是否为赠品 1 yes  2 no */
    private String  isgift;

    /** 数量 */
    private Integer quantity;

    /** 已发货数量 */
    private Integer shippedquantity;

    /** 已退货数量 */
    private Integer returnquantity;

    /** 商品 */
    private String productid;

    /** 订单 */
    private String  orderid;

    public String getOiid() {
        return oiid;
    }

    public void setOiid(String oiid) {
        this.oiid = oiid;
    }

    public String getOicode() {
        return oicode;
    }

    public void setOicode(String oicode) {
        this.oicode = oicode;
    }

    public String getPocname() {
        return pocname;
    }

    public void setPocname(String pocname) {
        this.pocname = pocname;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public String getIsgift() {
        return isgift;
    }

    public void setIsgift(String isgift) {
        this.isgift = isgift;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getShippedquantity() {
        return shippedquantity;
    }

    public void setShippedquantity(Integer shippedquantity) {
        this.shippedquantity = shippedquantity;
    }

    public Integer getReturnquantity() {
        return returnquantity;
    }

    public void setReturnquantity(Integer returnquantity) {
        this.returnquantity = returnquantity;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    @Override
    public String toString() {
        return "OrderItem{" +
                "oiid='" + oiid + '\'' +
                ", oicode='" + oicode + '\'' +
                ", pocname='" + pocname + '\'' +
                ", fullname='" + fullname + '\'' +
                ", price=" + price +
                ", weight=" + weight +
                ", isgift='" + isgift + '\'' +
                ", quantity=" + quantity +
                ", shippedquantity=" + shippedquantity +
                ", returnquantity=" + returnquantity +
                ", productid='" + productid + '\'' +
                ", orderid='" + orderid + '\'' +
                '}';
    }
}
