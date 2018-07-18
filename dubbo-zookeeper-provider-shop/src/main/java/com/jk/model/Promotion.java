package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Promotion implements Serializable{

    private static final long serialVersionUID = -690012800913267651L;

    /* id */
    private String proid;

    /** 名称 */
    private String proname;

    /** 标题 */
    private String protitle;

    /** 起始日期 */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date begindate;

    /** 结束日期 */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate;

    /** 最小商品数量 */
    private Integer minimumquantity;

    /** 最大商品数量 */
    private Integer maximumquantity;

    /** 最小商品价格 */
    private Double  minimumprice;

    /** 最大商品价格 */
    private Double maximumprice;

    /** 价格运算表达式 */
    private String priceexpression;

    /** 积分运算表达式 */
    private String pointexpression;

    /** 是否免运费 1 yes  2 no */
    private String  isfreeshipping;

    /** 是否允许使用优惠券 1 yes 2 no */
    private String  iscouponallowed;

    /** 介绍 */
    private String introduction;

    /** 允许参加会员等级关联id */
    private String  memberranksid ;

    /** 允许参与商品分类关联id */
    private String  productcategoriesid;
    /** 允许参与品牌关联id */
    private String  brandsid;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getProid() {
        return proid;
    }

    public void setProid(String proid) {
        this.proid = proid;
    }

    public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname;
    }

    public String getProtitle() {
        return protitle;
    }

    public void setProtitle(String protitle) {
        this.protitle = protitle;
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

    public String getPointexpression() {
        return pointexpression;
    }

    public void setPointexpression(String pointexpression) {
        this.pointexpression = pointexpression;
    }

    public String getIsfreeshipping() {
        return isfreeshipping;
    }

    public void setIsfreeshipping(String isfreeshipping) {
        this.isfreeshipping = isfreeshipping;
    }

    public String getIscouponallowed() {
        return iscouponallowed;
    }

    public void setIscouponallowed(String iscouponallowed) {
        this.iscouponallowed = iscouponallowed;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getMemberranksid() {
        return memberranksid;
    }

    public void setMemberranksid(String memberranksid) {
        this.memberranksid = memberranksid;
    }

    public String getProductcategoriesid() {
        return productcategoriesid;
    }

    public void setProductcategoriesid(String productcategoriesid) {
        this.productcategoriesid = productcategoriesid;
    }

    public String getBrandsid() {
        return brandsid;
    }

    public void setBrandsid(String brandsid) {
        this.brandsid = brandsid;
    }

    @Override
    public String toString() {
        return "Promotion{" +
                "proid='" + proid + '\'' +
                ", proname='" + proname + '\'' +
                ", protitle='" + protitle + '\'' +
                ", begindate=" + begindate +
                ", enddate=" + enddate +
                ", minimumquantity=" + minimumquantity +
                ", maximumquantity=" + maximumquantity +
                ", minimumprice=" + minimumprice +
                ", maximumprice=" + maximumprice +
                ", priceexpression='" + priceexpression + '\'' +
                ", pointexpression='" + pointexpression + '\'' +
                ", isfreeshipping='" + isfreeshipping + '\'' +
                ", iscouponallowed='" + iscouponallowed + '\'' +
                ", introduction='" + introduction + '\'' +
                ", memberranksid='" + memberranksid + '\'' +
                ", productcategoriesid='" + productcategoriesid + '\'' +
                ", brandsid='" + brandsid + '\'' +
                '}';
    }
}
