package com.jk.model;

import java.io.Serializable;


/* 订单日志*/
public class OrderLog implements Serializable {

    private static final long serialVersionUID = 4867371706111270595L;

    /* id */
    private  String olid;

    /** 类型
     *   1  订单创建
     *   2  订单修改
     *   3 订单确认
     *   4 订单支付
     *   5 订单退款
     *   6  订单发货
     *   7 订单退货
     *    8 订单完成
     *    9订单取消
     *    10 其它
     * */
    private String type;

    /** 操作员 */
    private String operator;

    /** 内容 */
    private String content;

    /** 订单 */
    private String orderid;

    public String getOlid() {
        return olid;
    }

    public void setOlid(String olid) {
        this.olid = olid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    @Override
    public String toString() {
        return "OrderLog{" +
                "olid='" + olid + '\'' +
                ", type='" + type + '\'' +
                ", operator='" + operator + '\'' +
                ", content='" + content + '\'' +
                ", orderid='" + orderid + '\'' +
                '}';
    }
}
