package com.jk.model;

import java.io.Serializable;

/* 地区*/
public class Area implements Serializable {


    private static final long serialVersionUID = -6922417817159880466L;

    /* id */
    private  String  aid;

    /** 名称 */
    private String text;

    /** 全称 */
    private String fullName;

    /** 树路径 */
    private String url;

    /** 上级地区 */
    private String pid;

    /** 订单 */
    private String  ordersid;

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getOrdersid() {
        return ordersid;
    }

    public void setOrdersid(String ordersid) {
        this.ordersid = ordersid;
    }

    @Override
    public String toString() {
        return "Area{" +
                "aid='" + aid + '\'' +
                ", text='" + text + '\'' +
                ", fullName='" + fullName + '\'' +
                ", url='" + url + '\'' +
                ", pid='" + pid + '\'' +
                ", ordersid='" + ordersid + '\'' +
                '}';
    }
}
