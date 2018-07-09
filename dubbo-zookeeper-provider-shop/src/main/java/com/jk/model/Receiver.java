package com.jk.model;

import java.io.Serializable;


/* 收货地址 */
public class Receiver implements Serializable {

    private static final long serialVersionUID = 8270920700413729559L;

    /* id */
    private String recid;

    /** 收货人 */
    private String consignee;

    /** 地区名称 */
    private String areaname;

    /** 地址 */
    private String address;

    /** 邮编 */
    private String zipcode;

    /** 电话 */
    private String phone;

    /** 是否默认 1 yes  2 no */
    private String  isdefault;

    /** 地区关联id */
    private String  areaid;

    /** 会员 */
    private String memberid;

    public String getRecid() {
        return recid;
    }

    public void setRecid(String recid) {
        this.recid = recid;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public String getAreaname() {
        return areaname;
    }

    public void setAreaname(String areaname) {
        this.areaname = areaname;
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

    public String getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(String isdefault) {
        this.isdefault = isdefault;
    }

    public String getAreaid() {
        return areaid;
    }

    public void setAreaid(String areaid) {
        this.areaid = areaid;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    @Override
    public String toString() {
        return "Receiver{" +
                "recid='" + recid + '\'' +
                ", consignee='" + consignee + '\'' +
                ", areaname='" + areaname + '\'' +
                ", address='" + address + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", phone='" + phone + '\'' +
                ", isdefault='" + isdefault + '\'' +
                ", areaid='" + areaid + '\'' +
                ", memberid='" + memberid + '\'' +
                '}';
    }
}
