package com.jk.model;

import java.io.Serializable;

public class FriendLink implements Serializable {

    private static final long serialVersionUID = -1577546409105908230L;

    /* id */
    private String fid;

    /** 名称 */
    private String name;

    /** 类型 1 文本  2 图片  */
    private String  type;

    /** logo */
    private String logo;

    /** 链接地址 */
    private String url;

    public String getFid() {
        return fid;
    }

    public void setFid(String fid) {
        this.fid = fid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    @Override
    public String toString() {
        return "FriendLink{" +
                "fid='" + fid + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", logo='" + logo + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
