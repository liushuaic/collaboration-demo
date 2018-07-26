package com.jk.model;

import java.io.Serializable;
import java.util.Date;


public class Product implements Serializable {

    private static final long serialVersionUID = 3549537193915083636L;

    /** 编号 主键id */
    private String sn;

    /** 名称 */
    private String name;

    /** 全称 */
    private String fullname;

    /** 销售价 */
    private Double price;

    /** 成本价 */
    private Double cost;

    /** 市场价 */
    private Double marketprice;

    /**
     * 数量
     */
     private String shuliang;

    /**
     * 已发货数量
     */
    private String fahuoshuliang;

    /**
     * 已退货数量
     */
    private String tuihuoshuliang;


    /** 单位 */
    private String unit;

    /** 重量 */
    private Integer weight;

    /** 库存 */
    private Integer stock;

    /** 已分配库存 */
    private Integer allocatedstock;

    /** 库存备注 */
    private String stockmemo;

    /** 赠送积分 */
    private Long point;

    /** 是否上架 1 上架  2 未上架 */
    private String ismarketable;

    /** 是否列出  1 列出  2 不列出*/
    private String islist;

    /** 是否置顶 1 置顶  2 取消置顶 */
    private String istop;

    /** 是否为赠品 1 赠品 2 非赠品*/
    private String isgift;

    /** 介绍 */
    private String introduction;

    /** 备注 */
    private String memo;

    /** 搜索关键词 */
    private String keyword;

    /** 页面标题 */
    private String seotitle;
    /** 图片业务字段 */
    private String title;

    /** 页面关键词 */
    private String seokeywords;

    /** 页面描述 */
    private String seodescription;

    /** 评分 */
    private Float score;

    /** 总评分 */
    private Long totalscore;

    /** 评分数 */
    private Long scorecount;

    /** 点击数 */
    private Long hits;

    /** 周点击数 */
    private Long weekhits;

    /** 月点击数 */
    private Long monthhits;

    /** 销量 */
    private Long sales;

    /** 周销量 */
    private Long weeksales;

    /** 月销量 */
    private Long monthsales;

    /** 周点击数更新日期 */
    private Date weekhitsdate;

    /** 月点击数更新日期 */
    private Date monthhitsdate;

    /** 周销量更新日期 */
    private Date weeksalesdate;

    /** 月销量更新日期 */
    private Date monthsalesdate;

    /** 商品属性值1 */
    private String attributevalue1;

    /** 商品属性值2 */
    private String attributevalue2;

    /** 商品属性值3 */
    private String attributevalue3;

    /** 商品分类关联id  productcategory*/
    private String productcategoryid;
     /* 业务字段 商品分类 名称*/
    private  String text;
    /** 品牌id  brand*/
    private String  brandid;

    /** 商品图片关联id */
    private String productimagesid ;

    /** 评论id reviews*/
    private String reviewsid;

    /**发布时间*/
    private Date createdatetime;
    /** 标签id  tag*/
    private String tagsid ;

    /** 会员id  member*/
    private String memberid;

    /** 规格id  SpecificationValue */
    private String specificationsid;

    /** 促销id promotions*/
    private String promotionsid;

    /** 购物车项关联id  CartItem*/
    private String cartitemsid ;

    /** 订单项关联id  OrderItem*/
    private String orderitemsid ;


    @Override
    public String toString() {
        return "Product{" +
                "sn='" + sn + '\'' +
                ", name='" + name + '\'' +
                ", fullname='" + fullname + '\'' +
                ", price=" + price +
                ", cost=" + cost +
                ", marketprice=" + marketprice +
                ", shuliang='" + shuliang + '\'' +
                ", fahuoshuliang='" + fahuoshuliang + '\'' +
                ", tuihuoshuliang='" + tuihuoshuliang + '\'' +
                ", unit='" + unit + '\'' +
                ", weight=" + weight +
                ", stock=" + stock +
                ", allocatedstock=" + allocatedstock +
                ", stockmemo='" + stockmemo + '\'' +
                ", point=" + point +
                ", ismarketable='" + ismarketable + '\'' +
                ", islist='" + islist + '\'' +
                ", istop='" + istop + '\'' +
                ", isgift='" + isgift + '\'' +
                ", introduction='" + introduction + '\'' +
                ", memo='" + memo + '\'' +
                ", keyword='" + keyword + '\'' +
                ", seotitle='" + seotitle + '\'' +
                ", title='" + title + '\'' +
                ", seokeywords='" + seokeywords + '\'' +
                ", seodescription='" + seodescription + '\'' +
                ", score=" + score +
                ", totalscore=" + totalscore +
                ", scorecount=" + scorecount +
                ", hits=" + hits +
                ", weekhits=" + weekhits +
                ", monthhits=" + monthhits +
                ", sales=" + sales +
                ", weeksales=" + weeksales +
                ", monthsales=" + monthsales +
                ", weekhitsdate=" + weekhitsdate +
                ", monthhitsdate=" + monthhitsdate +
                ", weeksalesdate=" + weeksalesdate +
                ", monthsalesdate=" + monthsalesdate +
                ", attributevalue1='" + attributevalue1 + '\'' +
                ", attributevalue2='" + attributevalue2 + '\'' +
                ", attributevalue3='" + attributevalue3 + '\'' +
                ", productcategoryid='" + productcategoryid + '\'' +
                ", text='" + text + '\'' +
                ", brandid='" + brandid + '\'' +
                ", productimagesid='" + productimagesid + '\'' +
                ", reviewsid='" + reviewsid + '\'' +
                ", createdatetime=" + createdatetime +
                ", tagsid='" + tagsid + '\'' +
                ", memberid='" + memberid + '\'' +
                ", specificationsid='" + specificationsid + '\'' +
                ", promotionsid='" + promotionsid + '\'' +
                ", cartitemsid='" + cartitemsid + '\'' +
                ", orderitemsid='" + orderitemsid + '\'' +
                '}';
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public Double getMarketprice() {
        return marketprice;
    }

    public void setMarketprice(Double marketprice) {
        this.marketprice = marketprice;
    }

    public String getShuliang() {
        return shuliang;
    }

    public void setShuliang(String shuliang) {
        this.shuliang = shuliang;
    }

    public String getFahuoshuliang() {
        return fahuoshuliang;
    }

    public void setFahuoshuliang(String fahuoshuliang) {
        this.fahuoshuliang = fahuoshuliang;
    }

    public String getTuihuoshuliang() {
        return tuihuoshuliang;
    }

    public void setTuihuoshuliang(String tuihuoshuliang) {
        this.tuihuoshuliang = tuihuoshuliang;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getAllocatedstock() {
        return allocatedstock;
    }

    public void setAllocatedstock(Integer allocatedstock) {
        this.allocatedstock = allocatedstock;
    }

    public String getStockmemo() {
        return stockmemo;
    }

    public void setStockmemo(String stockmemo) {
        this.stockmemo = stockmemo;
    }

    public Long getPoint() {
        return point;
    }

    public void setPoint(Long point) {
        this.point = point;
    }

    public String getIsmarketable() {
        return ismarketable;
    }

    public void setIsmarketable(String ismarketable) {
        this.ismarketable = ismarketable;
    }

    public String getIslist() {
        return islist;
    }

    public void setIslist(String islist) {
        this.islist = islist;
    }

    public String getIstop() {
        return istop;
    }

    public void setIstop(String istop) {
        this.istop = istop;
    }

    public String getIsgift() {
        return isgift;
    }

    public void setIsgift(String isgift) {
        this.isgift = isgift;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getSeotitle() {
        return seotitle;
    }

    public void setSeotitle(String seotitle) {
        this.seotitle = seotitle;
    }

    public String getSeokeywords() {
        return seokeywords;
    }

    public void setSeokeywords(String seokeywords) {
        this.seokeywords = seokeywords;
    }

    public String getSeodescription() {
        return seodescription;
    }

    public void setSeodescription(String seodescription) {
        this.seodescription = seodescription;
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public Long getTotalscore() {
        return totalscore;
    }

    public void setTotalscore(Long totalscore) {
        this.totalscore = totalscore;
    }

    public Long getScorecount() {
        return scorecount;
    }

    public void setScorecount(Long scorecount) {
        this.scorecount = scorecount;
    }

    public Long getHits() {
        return hits;
    }

    public void setHits(Long hits) {
        this.hits = hits;
    }

    public Long getWeekhits() {
        return weekhits;
    }

    public void setWeekhits(Long weekhits) {
        this.weekhits = weekhits;
    }

    public Long getMonthhits() {
        return monthhits;
    }

    public void setMonthhits(Long monthhits) {
        this.monthhits = monthhits;
    }

    public Long getSales() {
        return sales;
    }

    public void setSales(Long sales) {
        this.sales = sales;
    }

    public Long getWeeksales() {
        return weeksales;
    }

    public void setWeeksales(Long weeksales) {
        this.weeksales = weeksales;
    }

    public Long getMonthsales() {
        return monthsales;
    }

    public void setMonthsales(Long monthsales) {
        this.monthsales = monthsales;
    }

    public Date getWeekhitsdate() {
        return weekhitsdate;
    }

    public void setWeekhitsdate(Date weekhitsdate) {
        this.weekhitsdate = weekhitsdate;
    }

    public Date getMonthhitsdate() {
        return monthhitsdate;
    }

    public void setMonthhitsdate(Date monthhitsdate) {
        this.monthhitsdate = monthhitsdate;
    }

    public Date getWeeksalesdate() {
        return weeksalesdate;
    }

    public void setWeeksalesdate(Date weeksalesdate) {
        this.weeksalesdate = weeksalesdate;
    }

    public Date getMonthsalesdate() {
        return monthsalesdate;
    }

    public void setMonthsalesdate(Date monthsalesdate) {
        this.monthsalesdate = monthsalesdate;
    }

    public String getAttributevalue1() {
        return attributevalue1;
    }

    public void setAttributevalue1(String attributevalue1) {
        this.attributevalue1 = attributevalue1;
    }

    public String getAttributevalue2() {
        return attributevalue2;
    }

    public void setAttributevalue2(String attributevalue2) {
        this.attributevalue2 = attributevalue2;
    }

    public String getAttributevalue3() {
        return attributevalue3;
    }

    public void setAttributevalue3(String attributevalue3) {
        this.attributevalue3 = attributevalue3;
    }

    public String getProductcategoryid() {
        return productcategoryid;
    }

    public void setProductcategoryid(String productcategoryid) {
        this.productcategoryid = productcategoryid;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getBrandid() {
        return brandid;
    }

    public void setBrandid(String brandid) {
        this.brandid = brandid;
    }

    public String getProductimagesid() {
        return productimagesid;
    }

    public void setProductimagesid(String productimagesid) {
        this.productimagesid = productimagesid;
    }

    public String getReviewsid() {
        return reviewsid;
    }

    public void setReviewsid(String reviewsid) {
        this.reviewsid = reviewsid;
    }

    public Date getCreatedatetime() {
        return createdatetime;
    }

    public void setCreatedatetime(Date createdatetime) {
        this.createdatetime = createdatetime;
    }

    public String getTagsid() {
        return tagsid;
    }

    public void setTagsid(String tagsid) {
        this.tagsid = tagsid;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getSpecificationsid() {
        return specificationsid;
    }

    public void setSpecificationsid(String specificationsid) {
        this.specificationsid = specificationsid;
    }

    public String getPromotionsid() {
        return promotionsid;
    }

    public void setPromotionsid(String promotionsid) {
        this.promotionsid = promotionsid;
    }

    public String getCartitemsid() {
        return cartitemsid;
    }

    public void setCartitemsid(String cartitemsid) {
        this.cartitemsid = cartitemsid;
    }

    public String getOrderitemsid() {
        return orderitemsid;
    }

    public void setOrderitemsid(String orderitemsid) {
        this.orderitemsid = orderitemsid;
    }
}
