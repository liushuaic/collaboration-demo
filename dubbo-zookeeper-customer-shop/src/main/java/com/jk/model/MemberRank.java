package com.jk.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Set;

public class MemberRank implements Serializable{


    private static final long serialVersionUID = -2165555846466432682L;

    /* id */
    private String mrid;

    /** 名称 */
    private String mrname;

    /** 优惠比例 */
    private Double scale;

    /** 消费金额 */
    private Double amount;

    /** 是否默认 1 yes  2  no  */
    private String isdefault;

    /** 是否特殊 1 yes  2  no  */
    private String isspecial;

    /** 会员 id */
    private String  membersid ;

    /** 促销 id */
    private String  promotionsid ;

    public String getMrid() {
        return mrid;
    }

    public void setMrid(String mrid) {
        this.mrid = mrid;
    }

    public String getMrname() {
        return mrname;
    }

    public void setMrname(String mrname) {
        this.mrname = mrname;
    }

    public Double getScale() {
        return scale;
    }

    public void setScale(Double scale) {
        this.scale = scale;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(String isdefault) {
        this.isdefault = isdefault;
    }

    public String getIsspecial() {
        return isspecial;
    }

    public void setIsspecial(String isspecial) {
        this.isspecial = isspecial;
    }

    public String getMembersid() {
        return membersid;
    }

    public void setMembersid(String membersid) {
        this.membersid = membersid;
    }

    public String getPromotionsid() {
        return promotionsid;
    }

    public void setPromotionsid(String promotionsid) {
        this.promotionsid = promotionsid;
    }

    @Override
    public String toString() {
        return "MemberRank{" +
                "mrid='" + mrid + '\'' +
                ", mrname='" + mrname + '\'' +
                ", scale=" + scale +
                ", amount=" + amount +
                ", isdefault='" + isdefault + '\'' +
                ", isspecial='" + isspecial + '\'' +
                ", membersid='" + membersid + '\'' +
                ", promotionsid='" + promotionsid + '\'' +
                '}';
    }
}
