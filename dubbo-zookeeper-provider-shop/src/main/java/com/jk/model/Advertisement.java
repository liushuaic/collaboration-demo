package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/* 广告 */
public class Advertisement implements Serializable {

    private static final long serialVersionUID = 6489224310575076774L;

    /* id */
    private String adid;

    /** 标题 */
    private String title;

    /** 类型  1 文本  2 图片  3 flash  */
    private String  type;

    /** 内容 */
    private String content;

    /** 路径 */
    private String path;

    /** 起始日期 */
    private Date begindate;

    /** 结束日期 */
    private Date enddate;

    /** 链接地址 */
    private String url;

    /** 广告位 */
    private String  adpositionid;

    public String getAdid() {
        return adid;
    }

    public void setAdid(String adid) {
        this.adid = adid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getAdpositionid() {
        return adpositionid;
    }

    public void setAdpositionid(String adpositionid) {
        this.adpositionid = adpositionid;
    }

    @Override
    public String toString() {
        return "Advertisement{" +
                "adid='" + adid + '\'' +
                ", title='" + title + '\'' +
                ", type='" + type + '\'' +
                ", content='" + content + '\'' +
                ", path='" + path + '\'' +
                ", begindate=" + begindate +
                ", enddate=" + enddate +
                ", url='" + url + '\'' +
                ", adpositionid='" + adpositionid + '\'' +
                '}';
    }
}
