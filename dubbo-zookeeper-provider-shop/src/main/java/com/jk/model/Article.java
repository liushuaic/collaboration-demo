package com.jk.model;


import java.io.Serializable;

/* 文章表 */
public class Article implements Serializable {

    private static final long serialVersionUID = -211823361881831290L;

    /* id */
    private String arid;

    /** 标题 */
    private String title;

    /** 作者 */
    private String author;

    /** 内容 */
    private String content;

    /** 页面标题 */
    private String seotitle;

    /** 页面关键词 */
    private String seokeywords;

    /** 页面描述 */
    private String seodescription;

    /** 是否发布  1 yes  2  no */
    private String ispublication;

    /** 是否置顶 1 yes  2  no */
    private String istop;

    /** 点击数 */
    private Long hits;

    /** 页码 */
    private Integer pagenumber;

    /** 文章分类关联id */
    private String  articlecategoryid;

    /** 标签关联id */
    private String tagsid;

    public String getArid() {
        return arid;
    }

    public void setArid(String arid) {
        this.arid = arid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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

    public String getIspublication() {
        return ispublication;
    }

    public void setIspublication(String ispublication) {
        this.ispublication = ispublication;
    }

    public String getIstop() {
        return istop;
    }

    public void setIstop(String istop) {
        this.istop = istop;
    }

    public Long getHits() {
        return hits;
    }

    public void setHits(Long hits) {
        this.hits = hits;
    }

    public Integer getPagenumber() {
        return pagenumber;
    }

    public void setPagenumber(Integer pagenumber) {
        this.pagenumber = pagenumber;
    }

    public String getArticlecategoryid() {
        return articlecategoryid;
    }

    public void setArticlecategoryid(String articlecategoryid) {
        this.articlecategoryid = articlecategoryid;
    }

    public String getTagsid() {
        return tagsid;
    }

    public void setTagsid(String tagsid) {
        this.tagsid = tagsid;
    }

    @Override
    public String toString() {
        return "Article{" +
                "arid='" + arid + '\'' +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", content='" + content + '\'' +
                ", seotitle='" + seotitle + '\'' +
                ", seokeywords='" + seokeywords + '\'' +
                ", seodescription='" + seodescription + '\'' +
                ", ispublication='" + ispublication + '\'' +
                ", istop='" + istop + '\'' +
                ", hits=" + hits +
                ", pagenumber=" + pagenumber +
                ", articlecategoryid='" + articlecategoryid + '\'' +
                ", tagsid='" + tagsid + '\'' +
                '}';
    }
}
