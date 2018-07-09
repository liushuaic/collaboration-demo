package com.jk.model;

import java.io.Serializable;

public class Brand implements Serializable {

    private static final long serialVersionUID = -7120583181474403287L;

    /** 名称 */
    private  String brandid;

    /** 名称 */
    private String brandname;

    /** 类型 1 图片  2 文本*/
    private String type;

    /** logo */
    private String logo;

    /** 网址 */
    private String url;

    /** 介绍 */
    private String introduction;


    public String getBrandid() {
        return brandid;
    }

    public void setBrandid(String brandid) {
        this.brandid = brandid;
    }

    public String getBrandname() {
        return brandname;
    }

    public void setBrandname(String brandname) {
        this.brandname = brandname;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "Brand{" +
                "brandid='" + brandid + '\'' +
                ", name='" + brandname + '\'' +
                ", type='" + type + '\'' +
                ", logo='" + logo + '\'' +
                ", url='" + url + '\'' +
                ", introduction='" + introduction + '\'' +
                '}';
    }
}
