package com.jk.model;

import java.io.Serializable;


/*  角色表 */
public class Role implements Serializable {

    private static final long serialVersionUID = 6748631656776223163L;

    /* id */
    private String rid;

    /** 名称 */
    private String rolename;

    /** 是否内置  1 yes  2  no  */
    private String issystem;

    /** 描述 */
    private String description;

    /** 权限 */
    private String  authorities ;


    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getIssystem() {
        return issystem;
    }

    public void setIssystem(String issystem) {
        this.issystem = issystem;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthorities() {
        return authorities;
    }

    public void setAuthorities(String authorities) {
        this.authorities = authorities;
    }

    @Override
    public String toString() {
        return "Role{" +
                "rid='" + rid + '\'' +
                ", rolename='" + rolename + '\'' +
                ", issystem='" + issystem + '\'' +
                ", description='" + description + '\'' +
                ", authorities='" + authorities + '\'' +
                '}';
    }
}
