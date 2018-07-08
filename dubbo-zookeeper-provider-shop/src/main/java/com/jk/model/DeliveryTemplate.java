package com.jk.model;

import java.io.Serializable;

/* 快递单模板表 */
public class DeliveryTemplate implements Serializable{

    private static final long serialVersionUID = 3011849773786455642L;

    /* id */
    private String dtid;

    /** 名称 */
    private String name;

    /** 内容 */
    private String content;

    /** 宽度 */
    private Integer width;

    /** 高度 */
    private Integer height;

    /** 偏移量X */
    private Integer offsetX;

    /** 偏移量Y */
    private Integer offsetY;

    /** 背景图 */
    private String background;

    /** 是否默认 1 yes 2 no  */
    private String isdefault;

    /** 备注 */
    private String memo;

    public String getDtid() {
        return dtid;
    }

    public void setDtid(String dtid) {
        this.dtid = dtid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getWidth() {
        return width;
    }

    public void setWidth(Integer width) {
        this.width = width;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public Integer getOffsetX() {
        return offsetX;
    }

    public void setOffsetX(Integer offsetX) {
        this.offsetX = offsetX;
    }

    public Integer getOffsetY() {
        return offsetY;
    }

    public void setOffsetY(Integer offsetY) {
        this.offsetY = offsetY;
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background;
    }

    public String getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(String isdefault) {
        this.isdefault = isdefault;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    @Override
    public String toString() {
        return "DeliveryTemplate{" +
                "dtid='" + dtid + '\'' +
                ", name='" + name + '\'' +
                ", content='" + content + '\'' +
                ", width=" + width +
                ", height=" + height +
                ", offsetX=" + offsetX +
                ", offsetY=" + offsetY +
                ", background='" + background + '\'' +
                ", isdefault='" + isdefault + '\'' +
                ", memo='" + memo + '\'' +
                '}';
    }
}
