package com.jk.model;

import java.io.Serializable;

public class Consultation implements Serializable{


    private static final long serialVersionUID = -19295989831995920L;

    /* id */
    private String consuid;

    /** 咨询内容 */
    private String content;

    /** 回复内容 */
    private String replycontent;

    /** 是否回复 */
    private String isback;

    /** 是否显示  1 显示 2 不显示 */
    private String isshow;

    /** IP */
    private String ip;

    /** 创建日期 */
    private String createdate;

    /** 会员 */
    private String memberid;

    /** 商品 */
    private String productid;

    /** 商品名称 */
    private String name;

    /** 会员名称 */
    private String mrname;

    public String getConsuid() {
        return consuid;
    }

    public void setConsuid(String consuid) {
        this.consuid = consuid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getReplycontent() {
        return replycontent;
    }

    public void setReplycontent(String replycontent) {
        this.replycontent = replycontent;
    }

    public String getIsshow() {
        return isshow;
    }

    public void setIsshow(String isshow) {
        this.isshow = isshow;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getIsback() {
        return isback;
    }

    public void setIsback(String isback) {
        this.isback = isback;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMrname() {
        return mrname;
    }

    public void setMrname(String mrname) {
        this.mrname = mrname;
    }

    @Override
    public String toString() {
        return "Consultation{" +
                "consuid='" + consuid + '\'' +
                ", content='" + content + '\'' +
                ", replycontent='" + replycontent + '\'' +
                ", isback='" + isback + '\'' +
                ", isshow='" + isshow + '\'' +
                ", ip='" + ip + '\'' +
                ", createdate='" + createdate + '\'' +
                ", memberid='" + memberid + '\'' +
                ", productid='" + productid + '\'' +
                ", name='" + name + '\'' +
                ", mrname='" + mrname + '\'' +
                '}';
    }
}
