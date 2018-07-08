package com.jk.model;

import java.io.Serializable;


/* 发货点 */
public class DeliveryCenter implements Serializable {

    private static final long serialVersionUID = -3967792402013204911L;

    /* id */
    private String dcid;

    /** 名称 */
    private String name;

    /** 联系人 */
    private String contact;

    /** 地区名称 */
    private String areaname;

    /** 地址 */
    private String address;

    /** 邮编 */
    private String zipcode;

    /** 电话 */
    private String phone;

    /** 手机 */
    private String mobile;

    /** 备注 */
    private String memo;

    /** 是否默认 1 yes  2 no */
    private String isdefault;

    /** 地区 */
    private String  areaid;

    public String getDcid() {
        return dcid;
    }

    public void setDcid(String dcid) {
        this.dcid = dcid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
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

    @Override
    public String toString() {
        return "DeliveryCenter{" +
                "dcid='" + dcid + '\'' +
                ", name='" + name + '\'' +
                ", contact='" + contact + '\'' +
                ", areaname='" + areaname + '\'' +
                ", address='" + address + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", phone='" + phone + '\'' +
                ", mobile='" + mobile + '\'' +
                ", memo='" + memo + '\'' +
                ", isdefault='" + isdefault + '\'' +
                ", areaid='" + areaid + '\'' +
                '}';
    }
}
