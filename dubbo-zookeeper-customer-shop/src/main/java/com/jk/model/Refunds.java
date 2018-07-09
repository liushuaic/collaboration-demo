package com.jk.model;

import java.io.Serializable;


/* 退款单 */
public class Refunds implements Serializable {

    private static final long serialVersionUID = -4876404790873071846L;

    /* id */
    private  String reid;

    /** 编号 */
    private String refucode;

    /** 方式 1 在线支付 2 线下支付   3  预存款支付 */
    private String method;

    /** 支付方式 */
    private String paymentmethod;

    /** 退款银行 */
    private String bank;

    /** 退款账号 */
    private String account;

    /** 退款金额 */
    private Double amount;

    /** 收款人 */
    private String payee;

    /** 操作员 */
    private String operator;

    /** 备注 */
    private String memo;

    /** 订单 */
    private String orderid;


    public String getReid() {
        return reid;
    }

    public void setReid(String reid) {
        this.reid = reid;
    }

    public String getRefucode() {
        return refucode;
    }

    public void setRefucode(String refucode) {
        this.refucode = refucode;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
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

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getPayee() {
        return payee;
    }

    public void setPayee(String payee) {
        this.payee = payee;
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

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    @Override
    public String toString() {
        return "Refunds{" +
                "reid='" + reid + '\'' +
                ", refucode='" + refucode + '\'' +
                ", method='" + method + '\'' +
                ", paymentmethod='" + paymentmethod + '\'' +
                ", bank='" + bank + '\'' +
                ", account='" + account + '\'' +
                ", amount=" + amount +
                ", payee='" + payee + '\'' +
                ", operator='" + operator + '\'' +
                ", memo='" + memo + '\'' +
                ", orderid='" + orderid + '\'' +
                '}';
    }
}
