package com.jk.model;

import java.io.Serializable;
import java.util.Date;


/*  优惠码 */
public class CouponCode implements Serializable {


    private static final long serialVersionUID = -2594719055568609631L;

    /* id */
    private String ccid;

    /** 号码 */
    private String code;

    /** 是否已使用 1 yes   2  no  */
    private String isused;

    /** 使用日期 */
    private Date useddate;

    /** 优惠券 关联id*/
    private String couponid;

    /** 会员 关联id*/
    private String  memberid;

    /** 订单关联id */
    private String  orderid;

    public String getCcid() {
        return ccid;
    }

    public void setCcid(String ccid) {
        this.ccid = ccid;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getIsused() {
        return isused;
    }

    public void setIsused(String isused) {
        this.isused = isused;
    }

    public Date getUseddate() {
        return useddate;
    }

    public void setUseddate(Date useddate) {
        this.useddate = useddate;
    }

    public String getCouponid() {
        return couponid;
    }

    public void setCouponid(String couponid) {
        this.couponid = couponid;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    @Override
    public String toString() {
        return "CouponCode{" +
                "ccid='" + ccid + '\'' +
                ", code='" + code + '\'' +
                ", isused='" + isused + '\'' +
                ", useddate=" + useddate +
                ", couponid='" + couponid + '\'' +
                ", memberid='" + memberid + '\'' +
                ", orderid='" + orderid + '\'' +
                '}';
    }
}
