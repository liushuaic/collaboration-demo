package com.jk.model;

import java.io.Serializable;

public class Tag implements Serializable{

    private static final long serialVersionUID = -8788517401281343932L;

    /** 名称 */
    private String tagname;

    /** 类型 1 文章标签  2 商品标签*/
    private String tagtype;

    /** 图标 */
    private String tagicon;

    /** 备注 */
    private String tagmemo;

    public String getTagname() {
        return tagname;
    }

    public void setTagname(String tagname) {
        this.tagname = tagname;
    }

    public String getTagtype() {
        return tagtype;
    }

    public void setTagtype(String tagtype) {
        this.tagtype = tagtype;
    }

    public String getTagicon() {
        return tagicon;
    }

    public void setTagicon(String tagicon) {
        this.tagicon = tagicon;
    }

    public String getTagmemo() {
        return tagmemo;
    }

    public void setTagmemo(String tagmemo) {
        this.tagmemo = tagmemo;
    }

    @Override
    public String toString() {
        return "Tag{" +
                "tagname='" + tagname + '\'' +
                ", tagtype='" + tagtype + '\'' +
                ", tagicon='" + tagicon + '\'' +
                ", tagmemo='" + tagmemo + '\'' +
                '}';
    }
}
