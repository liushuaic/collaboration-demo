package com.jk.model;

import java.io.Serializable;

public class AdvertisementPosition implements Serializable {

    private static final long serialVersionUID = 8306524075007169322L;

    /* id */
    private String apid;

    /** 名称 */
    private String name;

    /** 宽度 */
    private Integer width;

    /** 高度 */
    private Integer height;

    /** 描述 */
    private String description;

    /** 模板 */
    private String template;

    public String getApid() {
        return apid;
    }

    public void setApid(String apid) {
        this.apid = apid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTemplate() {
        return template;
    }

    public void setTemplate(String template) {
        this.template = template;
    }

    @Override
    public String toString() {
        return "AdvertisementPosition{" +
                "apid='" + apid + '\'' +
                ", name='" + name + '\'' +
                ", width=" + width +
                ", height=" + height +
                ", description='" + description + '\'' +
                ", template='" + template + '\'' +
                '}';
    }
}
