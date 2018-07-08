package com.jk.model;


import java.io.Serializable;

/* 文章分类 */
public class ArticleCategory implements Serializable{


    private static final long serialVersionUID = 8750183053038795694L;

    /* id */
    private  String acid;

    /** 名称 */
    private String name;

    /** 页面标题 */
    private String seotitle;

    /** 页面关键词 */
    private String seokeywords;

    /** 页面描述 */
    private String seodescription;

    /** 树路径 */
    private String url;

    /** 层级 */
    private Integer grade;

    /** 上级分类 */
    private String pid;


    public String getAcid() {
        return acid;
    }

    public void setAcid(String acid) {
        this.acid = acid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "ArticleCategory{" +
                "acid='" + acid + '\'' +
                ", name='" + name + '\'' +
                ", seotitle='" + seotitle + '\'' +
                ", seokeywords='" + seokeywords + '\'' +
                ", seodescription='" + seodescription + '\'' +
                ", url='" + url + '\'' +
                ", grade=" + grade +
                ", pid='" + pid + '\'' +
                '}';
    }
}
