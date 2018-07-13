package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/* 收款单*/
public class Payment implements Serializable {

    private static final long serialVersionUID = 5181869108301125651L;

    /* id */
    private String paid;

    /** 编号 */
    private String paymentcode;

    /** 类型  1 订单支付   2  预存款充值 */
    private String  type;

    /** 方式 1 在线支付 2 线下支付   3  预存款支付 */
    private String method;

    /** 状态 1 等待支付  2 支付成功  3 支付失败*/
    private String status;

    /** 支付方式 */
    private String paymentmethod;

    /** 收款银行 */
    private String bank;

    /** 收款账号 */
    private String account;

    /** 支付手续费 */
    private Double fee;

    /** 付款金额 */
    private Double amount;

    /** 付款人 */
    private String payer;

    /** 操作员 */
    private String operator;

    /** 付款日期 */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date paymentdate;

    /**
     * 创建日期
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdatetime;
    /** 备注 */
    private String memo;

    /** 支付插件ID  ?????   */
 /*   private String paymentPluginId;*/

    /** 到期时间 */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date expire;

    /** 预存款 */
    private Deposit deposit;

    /** 会员 */
    private String  memberid;
    /**
     * 会员业务字段
     */
    private  String username;
    /** 订单 */
    private String  orderid;

    /**
     * 订单业务字段
     * @return
     */
   private String  ordercode;

    public String getPaid() {
        return paid;
    }

    public void setPaid(String paid) {
        this.paid = paid;
    }

    public String getPaymentcode() {
        return paymentcode;
    }

    public void setPaymentcode(String paymentcode) {
        this.paymentcode = paymentcode;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPaymentmethod() {
        return paymentmethod;
    }

    public void setPaymentmethod(String paymentmethod) {
        this.paymentmethod = paymentmethod;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public Double getFee() {
        return fee;
    }

    public void setFee(Double fee) {
        this.fee = fee;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getPayer() {
        return payer;
    }

    public void setPayer(String payer) {
        this.payer = payer;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public Date getPaymentdate() {
        return paymentdate;
    }

    public void setPaymentdate(Date paymentdate) {
        this.paymentdate = paymentdate;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public Date getExpire() {
        return expire;
    }

    public void setExpire(Date expire) {
        this.expire = expire;
    }

    public Deposit getDeposit() {
        return deposit;
    }

    public void setDeposit(Deposit deposit) {
        this.deposit = deposit;
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

    public Date getCreatedatetime() {
        return createdatetime;
    }

    public void setCreatedatetime(Date createdatetime) {
        this.createdatetime = createdatetime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getOrdercode() {
        return ordercode;
    }

    public void setOrdercode(String ordercode) {
        this.ordercode = ordercode;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "paid='" + paid + '\'' +
                ", paymentcode='" + paymentcode + '\'' +
                ", type='" + type + '\'' +
                ", method='" + method + '\'' +
                ", status='" + status + '\'' +
                ", paymentmethod='" + paymentmethod + '\'' +
                ", bank='" + bank + '\'' +
                ", account='" + account + '\'' +
                ", fee=" + fee +
                ", amount=" + amount +
                ", payer='" + payer + '\'' +
                ", operator='" + operator + '\'' +
                ", paymentdate=" + paymentdate +
                ", createdatetime=" + createdatetime +
                ", memo='" + memo + '\'' +
                ", expire=" + expire +
                ", deposit=" + deposit +
                ", memberid='" + memberid + '\'' +
                ", username='" + username + '\'' +
                ", orderid='" + orderid + '\'' +
                ", ordercode='" + ordercode + '\'' +
                '}';
    }


}
