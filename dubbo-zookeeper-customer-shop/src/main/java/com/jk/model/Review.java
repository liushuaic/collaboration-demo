package com.jk.model;

import java.io.Serializable;

public class Review implements Serializable{

    private static final long serialVersionUID = 3991906069507741126L;

    /** id */
    private String reviewid;

    /** 商品名称 */
    private String productid;

    /**
     * 类型  1 好评
     *       2 中评
     *       3 差评
     */
    private String reviewtype ;

    /** 评分 */
    private Integer score;

    /** 内容 */
    private String content;

    /** 会员 */
    private String memberid;

    /** 是否显示 1 显示  2 不显示*/
    private String isshow;

    /** 创建日期 */
    private String createdate;

    /** 商品名称 */
    private String name;

    /** 会员名称 */
    private String mrname;

    public String getReviewid() {
        return reviewid;
    }

    public void setReviewid(String reviewid) {
        this.reviewid = reviewid;
    }

    public String getReviewtype() {
        return reviewtype;
    }

    public void setReviewtype(String reviewtype) {
        this.reviewtype = reviewtype;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getIsshow() {
        return isshow;
    }

    public void setIsshow(String isshow) {
        this.isshow = isshow;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMrname() {
        return mrname;
    }

    public void setMrname(String mrname) {
        this.mrname = mrname;
    }

    @Override
    public String toString() {
        return "Review{" +
                "reviewid='" + reviewid + '\'' +
                ", productid='" + productid + '\'' +
                ", reviewtype='" + reviewtype + '\'' +
                ", score=" + score +
                ", content='" + content + '\'' +
                ", memberid='" + memberid + '\'' +
                ", isshow='" + isshow + '\'' +
                ", createdate='" + createdate + '\'' +
                ", name='" + name + '\'' +
                ", mrname='" + mrname + '\'' +
                '}';
    }
}
