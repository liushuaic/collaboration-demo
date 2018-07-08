package com.jk.model;

import java.io.Serializable;

/* 预存款*/
public class Deposit implements Serializable {

    private static final long serialVersionUID = -5904269775275834275L;

    /* id */
    private String did;

    /** 类型 */
    private String type;

    /** 收入金额 */
    private Double credit;

    /** 支出金额 */
    private Double debit;

    /** 当前余额 */
    private Double balance;

    /** 操作员 */
    private String operator;

    /** 备注 */
    private String memo;

    /** 会员 */
    private String  memberid;

    /** 订单 */
    private String  orderid;

    /** 收款单Payment 关联id */
    private  String paymentid;

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Double getCredit() {
        return credit;
    }

    public void setCredit(Double credit) {
        this.credit = credit;
    }

    public Double getDebit() {
        return debit;
    }

    public void setDebit(Double debit) {
        this.debit = debit;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
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

    public String getPaymentid() {
        return paymentid;
    }

    public void setPaymentid(String paymentid) {
        this.paymentid = paymentid;
    }

    @Override
    public String toString() {
        return "Deposit{" +
                "did='" + did + '\'' +
                ", type='" + type + '\'' +
                ", credit=" + credit +
                ", debit=" + debit +
                ", balance=" + balance +
                ", operator='" + operator + '\'' +
                ", memo='" + memo + '\'' +
                ", memberid='" + memberid + '\'' +
                ", orderid='" + orderid + '\'' +
                ", paymentid='" + paymentid + '\'' +
                '}';
    }
}
