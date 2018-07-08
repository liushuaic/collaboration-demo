package com.jk.model;

import java.io.Serializable;

public class Seo implements Serializable {

    private static final long serialVersionUID = -1971039803951592556L;

    /* id */
    private  String seoid;

    /** 类型
     *   1 首页
     *   2 商品列表
     *   3 商品搜索
     *   4 商品页
     *   5 文章列表
     *   6 文章列表
     *   7 文章搜索
     *   8 文章页
     *   9 品牌列表
     *   10 品牌页
     *
     * */
    private String  type;

    /** 页面标题 */
    private String title;

    /** 页面关键词 */
    private String keywords;

    /** 页面描述 */
    private String description;

    public String getSeoid() {
        return seoid;
    }

    public void setSeoid(String seoid) {
        this.seoid = seoid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Seo{" +
                "seoid='" + seoid + '\'' +
                ", type='" + type + '\'' +
                ", title='" + title + '\'' +
                ", keywords='" + keywords + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
