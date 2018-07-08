package com.jk.model;

import java.io.Serializable;

public class Review implements Serializable{

    private static final long serialVersionUID = 3991906069507741126L;

    /** id */
    private String reviewid;

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

    /** 是否显示 1 显示  2 不显示*/
    private String isshow;

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

    @Override
    public String toString() {
        return "Review{" +
                "reviewid='" + reviewid + '\'' +
                ", reviewtype='" + reviewtype + '\'' +
                ", score=" + score +
                ", content='" + content + '\'' +
                ", isshow='" + isshow + '\'' +
                '}';
    }
}
