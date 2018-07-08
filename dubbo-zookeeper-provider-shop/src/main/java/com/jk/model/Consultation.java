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

    /** 是否显示  1 显示 2 不显示 */
    private String isshow;

    /** IP */
    private String ip;

    /** 会员 */
    private String memberid;

    /** 商品 */
    private String productid;

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

    @Override
    public String toString() {
        return "Consultation{" +
                "consuid='" + consuid + '\'' +
                ", content='" + content + '\'' +
                ", replycontent='" + replycontent + '\'' +
                ", isshow='" + isshow + '\'' +
                ", ip='" + ip + '\'' +
                ", memberid='" + memberid + '\'' +
                ", productid='" + productid + '\'' +
                '}';
    }
}
