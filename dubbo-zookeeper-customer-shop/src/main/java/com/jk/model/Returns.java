package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/* 退货单 */
public class Returns implements Serializable {

    private static final long serialVersionUID = 8049365291491725309L;

    /* id */
    private String reid;

    /** 编号 */
    private String returnsn;

    /** 配送方式 */
    private String shippingmethod;

    /** 物流公司 */
    private String deliverycorp;

    /** 运单号 */
    private String trackingno;

    /** 物流费用 */
    private Double freight;

    /** 发货人 */
    private String shipper;

    /**创建日期*/
    private Date createdatetime;

    public Date getCreatedatetime() {
        return createdatetime;
    }

    public void setCreatedatetime(Date createdatetime) {
        this.createdatetime = createdatetime;
    }

    /** 地区 */
    private String area;

    /** 地址 */
    private String address;

    /** 邮编 */
    private String zipCode;

    /** 电话 */
    private String phone;

    /** 操作员 */
    private String operator;

    /** 备注 */
    private String memo;

    /** 订单 */
    private String  orderid;
    /**订单名称业务字段*/
    private String ordercode;

    @Override
    public String toString() {
        return "Returns{" +
                "reid='" + reid + '\'' +
                ", returnsn='" + returnsn + '\'' +
                ", shippingmethod='" + shippingmethod + '\'' +
                ", deliverycorp='" + deliverycorp + '\'' +
                ", trackingno='" + trackingno + '\'' +
                ", freight=" + freight +
                ", shipper='" + shipper + '\'' +
                ", createdatetime=" + createdatetime +
                ", area='" + area + '\'' +
                ", address='" + address + '\'' +
                ", zipCode='" + zipCode + '\'' +
                ", phone='" + phone + '\'' +
                ", operator='" + operator + '\'' +
                ", memo='" + memo + '\'' +
                ", orderid='" + orderid + '\'' +
                ", ordercode='" + ordercode + '\'' +
                '}';
    }

    public String getOrdercode() {
        return ordercode;
    }

    public void setOrdercode(String ordercode) {
        this.ordercode = ordercode;
    }

    public String getReid() {
        return reid;
    }

    public void setReid(String reid) {
        this.reid = reid;
    }

    public String getReturnsn() {
        return returnsn;
    }

    public void setReturnsn(String returnsn) {
        this.returnsn = returnsn;
    }

    public String getShippingmethod() {
        return shippingmethod;
    }

    public void setShippingmethod(String shippingmethod) {
        this.shippingmethod = shippingmethod;
    }

    public String getDeliverycorp() {
        return deliverycorp;
    }

    public void setDeliverycorp(String deliverycorp) {
        this.deliverycorp = deliverycorp;
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

    public String getShipper() {
        return shipper;
    }

    public void setShipper(String shipper) {
        this.shipper = shipper;
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

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
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

}
