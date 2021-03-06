package com.jk.model;

import java.io.Serializable;

public class ProductImages implements Serializable{

    private static final long serialVersionUID = 6315334096217939831L;

    /*主键id*/
    private String proimgeid;

    /*关联商品id*/
    private String productid;

    /*图片路径*/
    private String title;

    @Override
    public String toString() {
        return "ProductImages{" +
                "proimgeid='" + proimgeid + '\'' +
                ", productid='" + productid + '\'' +
                ", title='" + title + '\'' +
                '}';
    }

    public String getProimgeid() {
        return proimgeid;
    }

    public void setProimgeid(String proimgeid) {
        this.proimgeid = proimgeid;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
