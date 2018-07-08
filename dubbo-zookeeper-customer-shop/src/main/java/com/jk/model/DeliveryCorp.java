package com.jk.model;

import java.io.Serializable;

public class DeliveryCorp implements Serializable {

    private static final long serialVersionUID = -7636308877488425382L;

    /* id */
    private String dcid;

    /** 名称 */
    private String dcname;

    /** 网址 */
    private String url;

    /** 代码 */
    private String code;

    public String getDcid() {
        return dcid;
    }

    public void setDcid(String dcid) {
        this.dcid = dcid;
    }

    public String getDcname() {
        return dcname;
    }

    public void setDcname(String dcname) {
        this.dcname = dcname;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "DeliveryCorp{" +
                "dcid='" + dcid + '\'' +
                ", dcname='" + dcname + '\'' +
                ", url='" + url + '\'' +
                ", code='" + code + '\'' +
                '}';
    }
}
