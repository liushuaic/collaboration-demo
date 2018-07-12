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

    /* 业务字段*/
    /** 用户名 */
    private String username;
    /** 商品名称 */
    private String name;


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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "ProductNotify{" +
                "proid='" + proid + '\'' +
                ", email='" + email + '\'' +
                ", hassent='" + hassent + '\'' +
                ", memberid='" + memberid + '\'' +
                ", productid='" + productid + '\'' +
                ", username='" + username + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
