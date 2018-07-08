package com.jk.model;

import java.io.Serializable;

/* 会员注册项*/
public class MemberAttribute implements Serializable {

    private static final long serialVersionUID = 7902881585497425494L;

    /* id */
    private String maid;

    /** 名称 */
    private String name;

    /** 类型  1 文本  2  单选项  3  多选项  */
    private String  type;

    /** 是否启用 1 yes 2 no  */
    private String  isenabled;

    /** 是否必填 1 yes 2 no */
    private String isrequired;

    /** 属性序号 */
    private Integer propertyindex;

    /** 可选项 ？？？？ */

    public String getMaid() {
        return maid;
    }

    public void setMaid(String maid) {
        this.maid = maid;
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

    public String getIsenabled() {
        return isenabled;
    }

    public void setIsenabled(String isenabled) {
        this.isenabled = isenabled;
    }

    public String getIsrequired() {
        return isrequired;
    }

    public void setIsrequired(String isrequired) {
        this.isrequired = isrequired;
    }

    public Integer getPropertyindex() {
        return propertyindex;
    }

    public void setPropertyindex(Integer propertyindex) {
        this.propertyindex = propertyindex;
    }

    @Override
    public String toString() {
        return "MemberAttribute{" +
                "maid='" + maid + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", isenabled='" + isenabled + '\'' +
                ", isrequired='" + isrequired + '\'' +
                ", propertyindex=" + propertyindex +
                '}';
    }
}
