package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * 会员表
 */

public class Member implements Serializable{

    private static final long serialVersionUID = 7928722219648579695L;

    /*  id */
    private String memberid;

/*基本信息*/

    /** 用户名 */
    private String username;

    /** 密码 */
    private String password;

    /** E-mail */
    private String email;

    /** 积分 */
    private Integer point;

    /** 消费金额 */
    private String amount;

    /** 余额 */
    private String balance;

    /** 创建日期 */
    private String createdate;

    /** 会员等级 memberRank */
    private String memberrankid;

    /** 是否启用 1 启用  2 不启用*/
    private String isenabled;

    /** 是否锁定 1 锁定 2 不锁定*/
    private String islocked;

    /** 连续登录失败次数 */
    private Integer loginfailurecount;

    /** 锁定日期 */
    private String lockeddate;

    /** 最后登录日期 */
    private String logindate;

/* 个人资料 */

    /** 姓名 */
    private String name;

    /** 性别 1 男  2 女*/
    private String gender;

    /** 出生日期 */
    private String birth;

    /** 地址 */
    private String address;

    /** 邮编 */
    private String zipcode;

    /** 电话 */
    private String phone;

    /** 手机 */
    private String mobile;


/*会员注册项值？？？？*/

    /** 会员注册项值0 */
    private String attributeValue0;

    /** 会员注册项值1 */
    private String attributeValue1;

    /** 会员注册项值2 */
    private String attributeValue2;

    /** 会员注册项值3 */
    private String attributeValue3;

    /** 会员注册项值4 */
    private String attributeValue4;

    /** 会员注册项值5 */
    private String attributeValue5;

    /** 会员注册项值6 */
    private String attributeValue6;

    /** 会员注册项值7 */
    private String attributeValue7;

    /** 会员注册项值8 */
    private String attributeValue8;

    /** 会员注册项值9 */
    private String attributeValue9;

    /** 地区 ？？ area*/
    private String area;

    /** 购物车项关联id  CartItem*/
    private String cartitemsid ;

    /** 订单项关联id  OrderItem*/
    private String orderitemsid ;

    /** 评论关联id */
    private String  reviewsid ;

    /** 消息关联id  Message*/
    private String  messagesid ;

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getPoint() {
        return point;
    }

    public void setPoint(Integer point) {
        this.point = point;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getMemberrankid() {
        return memberrankid;
    }

    public void setMemberrankid(String memberrankid) {
        this.memberrankid = memberrankid;
    }

    public String getIsenabled() {
        return isenabled;
    }

    public void setIsenabled(String isenabled) {
        this.isenabled = isenabled;
    }

    public String getIslocked() {
        return islocked;
    }

    public void setIslocked(String islocked) {
        this.islocked = islocked;
    }

    public Integer getLoginfailurecount() {
        return loginfailurecount;
    }

    public void setLoginfailurecount(Integer loginfailurecount) {
        this.loginfailurecount = loginfailurecount;
    }

    public String getLockeddate() {
        return lockeddate;
    }

    public void setLockeddate(String lockeddate) {
        this.lockeddate = lockeddate;
    }

    public String getLogindate() {
        return logindate;
    }

    public void setLogindate(String logindate) {
        this.logindate = logindate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
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

    public String getAttributeValue0() {
        return attributeValue0;
    }

    public void setAttributeValue0(String attributeValue0) {
        this.attributeValue0 = attributeValue0;
    }

    public String getAttributeValue1() {
        return attributeValue1;
    }

    public void setAttributeValue1(String attributeValue1) {
        this.attributeValue1 = attributeValue1;
    }

    public String getAttributeValue2() {
        return attributeValue2;
    }

    public void setAttributeValue2(String attributeValue2) {
        this.attributeValue2 = attributeValue2;
    }

    public String getAttributeValue3() {
        return attributeValue3;
    }

    public void setAttributeValue3(String attributeValue3) {
        this.attributeValue3 = attributeValue3;
    }

    public String getAttributeValue4() {
        return attributeValue4;
    }

    public void setAttributeValue4(String attributeValue4) {
        this.attributeValue4 = attributeValue4;
    }

    public String getAttributeValue5() {
        return attributeValue5;
    }

    public void setAttributeValue5(String attributeValue5) {
        this.attributeValue5 = attributeValue5;
    }

    public String getAttributeValue6() {
        return attributeValue6;
    }

    public void setAttributeValue6(String attributeValue6) {
        this.attributeValue6 = attributeValue6;
    }

    public String getAttributeValue7() {
        return attributeValue7;
    }

    public void setAttributeValue7(String attributeValue7) {
        this.attributeValue7 = attributeValue7;
    }

    public String getAttributeValue8() {
        return attributeValue8;
    }

    public void setAttributeValue8(String attributeValue8) {
        this.attributeValue8 = attributeValue8;
    }

    public String getAttributeValue9() {
        return attributeValue9;
    }

    public void setAttributeValue9(String attributeValue9) {
        this.attributeValue9 = attributeValue9;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getCartitemsid() {
        return cartitemsid;
    }

    public void setCartitemsid(String cartitemsid) {
        this.cartitemsid = cartitemsid;
    }

    public String getOrderitemsid() {
        return orderitemsid;
    }

    public void setOrderitemsid(String orderitemsid) {
        this.orderitemsid = orderitemsid;
    }

    public String getReviewsid() {
        return reviewsid;
    }

    public void setReviewsid(String reviewsid) {
        this.reviewsid = reviewsid;
    }

    public String getMessagesid() {
        return messagesid;
    }

    public void setMessagesid(String messagesid) {
        this.messagesid = messagesid;
    }

    @Override
    public String toString() {
        return "Member{" +
                "memberid='" + memberid + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", point=" + point +
                ", amount='" + amount + '\'' +
                ", balance='" + balance + '\'' +
                ", createdate='" + createdate + '\'' +
                ", memberrankid='" + memberrankid + '\'' +
                ", isenabled='" + isenabled + '\'' +
                ", islocked='" + islocked + '\'' +
                ", loginfailurecount=" + loginfailurecount +
                ", lockeddate='" + lockeddate + '\'' +
                ", logindate='" + logindate + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", birth='" + birth + '\'' +
                ", address='" + address + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", phone='" + phone + '\'' +
                ", mobile='" + mobile + '\'' +
                ", attributeValue0='" + attributeValue0 + '\'' +
                ", attributeValue1='" + attributeValue1 + '\'' +
                ", attributeValue2='" + attributeValue2 + '\'' +
                ", attributeValue3='" + attributeValue3 + '\'' +
                ", attributeValue4='" + attributeValue4 + '\'' +
                ", attributeValue5='" + attributeValue5 + '\'' +
                ", attributeValue6='" + attributeValue6 + '\'' +
                ", attributeValue7='" + attributeValue7 + '\'' +
                ", attributeValue8='" + attributeValue8 + '\'' +
                ", attributeValue9='" + attributeValue9 + '\'' +
                ", area='" + area + '\'' +
                ", cartitemsid='" + cartitemsid + '\'' +
                ", orderitemsid='" + orderitemsid + '\'' +
                ", reviewsid='" + reviewsid + '\'' +
                ", messagesid='" + messagesid + '\'' +
                '}';
    }
}
