package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/* 优惠券*/
public class Coupon implements Serializable{

    private static final long serialVersionUID = -9152689147085913464L;


    private  String couid;/* id */


    private String name;/** 名称 */


    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date begindate; /** 使用起始日期 */


    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate; /** 使用结束日期 */


    private Integer minimumquantity; /** 最小商品数量 */


    private Integer maximumquantity; /** 最大商品数量 */


    private Double minimumprice;/** 最小商品价格 */


    private Double maximumprice;/** 最大商品价格 */


    private String priceexpression;/** 价格运算表达式 */


    private String isEnabled;/** 是否启用 1 yes 2 no */


    private String isexchange;/** 是否允许积分兑换 1 yes 2 no */


    private Long point;/** 积分兑换数 */


    private String introduction;/** 介绍 */

    public String getCouid() {
        return couid;
    }

    public void setCouid(String couid) {
        this.couid = couid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Integer getMinimumquantity() {
        return minimumquantity;
    }

    public void setMinimumquantity(Integer minimumquantity) {
        this.minimumquantity = minimumquantity;
    }

    public Integer getMaximumquantity() {
        return maximumquantity;
    }

    public void setMaximumquantity(Integer maximumquantity) {
        this.maximumquantity = maximumquantity;
    }

    public Double getMinimumprice() {
        return minimumprice;
    }

    public void setMinimumprice(Double minimumprice) {
        this.minimumprice = minimumprice;
    }

    public Double getMaximumprice() {
        return maximumprice;
    }

    public void setMaximumprice(Double maximumprice) {
        this.maximumprice = maximumprice;
    }

    public String getPriceexpression() {
        return priceexpression;
    }

    public void setPriceexpression(String priceexpression) {
        this.priceexpression = priceexpression;
    }

    public String getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(String isEnabled) {
        this.isEnabled = isEnabled;
    }

    public String getIsexchange() {
        return isexchange;
    }

    public void setIsexchange(String isexchange) {
        this.isexchange = isexchange;
    }

    public Long getPoint() {
        return point;
    }

    public void setPoint(Long point) {
        this.point = point;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "Coupon{" +
                "couid='" + couid + '\'' +
                ", name='" + name + '\'' +
                ", begindate=" + begindate +
                ", enddate=" + enddate +
                ", minimumquantity=" + minimumquantity +
                ", maximumquantity=" + maximumquantity +
                ", minimumprice=" + minimumprice +
                ", maximumprice=" + maximumprice +
                ", priceexpression='" + priceexpression + '\'' +
                ", isEnabled='" + isEnabled + '\'' +
                ", isexchange='" + isexchange + '\'' +
                ", point=" + point +
                ", introduction='" + introduction + '\'' +
                '}';
    }
}
