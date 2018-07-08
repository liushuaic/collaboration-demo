package com.jk.model;

import java.io.Serializable;

public class Specification implements Serializable{

    private static final long serialVersionUID = -5676131235037280878L;

    /*主键id*/
    private String speid;

    /** 名称 */
    private String spename;

    /** 类型 1 图片 2 文本 */
    private String spetype;

    /** 备注 */
    private String spememo;

    /** 规格值 */
    private String spevalues;

    /** 商品 */
    private String productsid ;


    public String getSpeid() {
        return speid;
    }

    public void setSpeid(String speid) {
        this.speid = speid;
    }

    public String getSpename() {
        return spename;
    }

    public void setSpename(String spename) {
        this.spename = spename;
    }

    public String getSpetype() {
        return spetype;
    }

    public void setSpetype(String spetype) {
        this.spetype = spetype;
    }

    public String getSpememo() {
        return spememo;
    }

    public void setSpememo(String spememo) {
        this.spememo = spememo;
    }

    public String getSpevalues() {
        return spevalues;
    }

    public void setSpevalues(String spevalues) {
        this.spevalues = spevalues;
    }

    public String getProductsid() {
        return productsid;
    }

    public void setProductsid(String productsid) {
        this.productsid = productsid;
    }


    @Override
    public String toString() {
        return "Specification{" +
                "speid='" + speid + '\'' +
                ", spename='" + spename + '\'' +
                ", spetype='" + spetype + '\'' +
                ", spememo='" + spememo + '\'' +
                ", spevalues='" + spevalues + '\'' +
                ", productsid='" + productsid + '\'' +
                '}';
    }
}
