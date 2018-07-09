package com.jk.model;

import java.io.Serializable;

/* 到货通知 */
public class ProductNotify implements Serializable {

    private static final long serialVersionUID = -2663006182771938164L;

    /* id */
    private String proid;

    /** E-mail */
    private String email;

    /** 是否已发送 1 yes 2 no  */
    private String hassent;

    /** 会员 */
    private String  memberid;

    /** 商品 */
    private String  productid;

    public String getProid() {
        return proid;
    }

    public void setProid(String proid) {
        this.proid = proid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHassent() {
        return hassent;
    }

    public void setHassent(String hassent) {
        this.hassent = hassent;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    @Override
    public String toString() {
        return "ProductNotify{" +
                "proid='" + proid + '\'' +
                ", email='" + email + '\'' +
                ", hassent='" + hassent + '\'' +
                ", memberid='" + memberid + '\'' +
                ", productid='" + productid + '\'' +
                '}';
    }
}
