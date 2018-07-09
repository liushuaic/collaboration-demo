package com.jk.model;

import java.io.Serializable;

public class Navigation implements Serializable {

    private static final long serialVersionUID = 7281064274400628905L;

    /* id */
    private String  nid;

    /** 名称 */
    private String name;

    /** 位置 1 顶部 2 中间  3 底部 */
    private String  position;

    /** 链接地址 */
    private String url;

    /** 是否新窗口打开 1 yes 2 no  */
    private String isblanktarget;

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIsblanktarget() {
        return isblanktarget;
    }

    public void setIsblanktarget(String isblanktarget) {
        this.isblanktarget = isblanktarget;
    }

    @Override
    public String toString() {
        return "Navigation{" +
                "nid='" + nid + '\'' +
                ", name='" + name + '\'' +
                ", position='" + position + '\'' +
                ", url='" + url + '\'' +
                ", isblanktarget='" + isblanktarget + '\'' +
                '}';
    }
}
