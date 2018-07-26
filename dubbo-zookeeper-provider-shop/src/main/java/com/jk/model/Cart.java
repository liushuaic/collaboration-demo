package com.jk.model;

import java.io.Serializable;

/* 购物车*/
public class Cart implements Serializable {

    private static final long serialVersionUID = -1044351492658890803L;

    /* id */
    private String cartid;

    /** 数量 */
    private Integer quantity;

    /** 商品 */
    private String productid;

    /** 临时商品价格 */
    private Double tempprice;

    /** 临时赠送积分 */
    private Long temppoint;

    /** 最大商品数 */
    public static final Integer MAX_PRODUCT_COUNT = 100;

    /** 用户id */
    private String userid;

/*业务字段*/
    /** 名称 */
    private String name;

    /** 市场价 */
    private Double marketprice;

    /*图片路径*/
    private String title;

    public String getCartid() {
        return cartid;
    }

    public void setCartid(String cartid) {
        this.cartid = cartid;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public Double getTempprice() {
        return tempprice;
    }

    public void setTempprice(Double tempprice) {
        this.tempprice = tempprice;
    }

    public Long getTemppoint() {
        return temppoint;
    }

    public void setTemppoint(Long temppoint) {
        this.temppoint = temppoint;
    }

    public static Integer getMaxProductCount() {
        return MAX_PRODUCT_COUNT;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getMarketprice() {
        return marketprice;
    }

    public void setMarketprice(Double marketprice) {
        this.marketprice = marketprice;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cartid='" + cartid + '\'' +
                ", quantity=" + quantity +
                ", productid='" + productid + '\'' +
                ", tempprice=" + tempprice +
                ", temppoint=" + temppoint +
                ", userid='" + userid + '\'' +
                ", name='" + name + '\'' +
                ", marketprice=" + marketprice +
                ", title='" + title + '\'' +
                '}';
    }
}
