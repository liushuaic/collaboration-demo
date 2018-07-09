package com.jk.model;

import java.io.Serializable;

/*  发货单 */
public class Shipping implements Serializable {

    private static final long serialVersionUID = 5670673652339808535L;

    /* id */
    private String shid;

    /** 编号 */
    private String shipsn;

    /** 配送方式 */
    private String shippingmethod;

    /** 物流公司关联id  */
    private String deliveryid;

    /** 运单号 */
    private String trackingno;

    /** 物流费用 */
    private Double freight;

    /** 收货人 */
    private String consignee;

    /** 地区 */
    private String area;

    /** 地址 */
    private String address;

    /** 邮编 */
    private String zipcode;

    /** 电话 */
    private String phone;

    /** 操作员 */
    private String operator;

    /** 备注 */
    private String memo;

    /** 订单 */
    private String  orderid;

    public String getShid() {
        return shid;
    }

    public void setShid(String shid) {
        this.shid = shid;
    }

    public String getShipsn() {
        return shipsn;
    }

    public void setShipsn(String shipsn) {
        this.shipsn = shipsn;
    }

    public String getShippingmethod() {
        return shippingmethod;
    }

    public void setShippingmethod(String shippingmethod) {
        this.shippingmethod = shippingmethod;
    }

    public String getDeliveryid() {
        return deliveryid;
    }

    public void setDeliveryid(String deliveryid) {
        this.deliveryid = deliveryid;
    }

    public String getTrackingno() {
        return trackingno;
    }

    public void setTrackingno(String trackingno) {
        this.trackingno = trackingno;
    }

    public Double getFreight() {
        return freight;
    }

    public void setFreight(Double freight) {
        this.freight = freight;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    @Override
    public String toString() {
        return "Shipping{" +
                "shid='" + shid + '\'' +
                ", shipsn='" + shipsn + '\'' +
                ", shippingmethod='" + shippingmethod + '\'' +
                ", deliveryid='" + deliveryid + '\'' +
                ", trackingno='" + trackingno + '\'' +
                ", freight=" + freight +
                ", consignee='" + consignee + '\'' +
                ", area='" + area + '\'' +
                ", address='" + address + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", phone='" + phone + '\'' +
                ", operator='" + operator + '\'' +
                ", memo='" + memo + '\'' +
                ", orderid='" + orderid + '\'' +
                '}';
    }
}
