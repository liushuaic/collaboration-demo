package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/* * Entity - 管理员  */
public class Admin implements Serializable{

    private static final long serialVersionUID = 2690024129946921650L;

    /* id */
    private String aid;

    /** 用户名 */
    private String username;

    /** 密码 */
    private String password;

    /** E-mail */
    private String email;

    /** 姓名 */
    private String realname;

    /** 部门 */
    private String department;

    /** 是否启用 1 yes  2  no   */
    private String  isenabled;

    /** 是否锁定 1 yes  2  no */
    private String islocked;

    /** 连续登录失败次数 */
    private Integer loginfailurecount;

    /** 锁定日期 */
    private Date lockeddate;

    /** 最后登录日期 */
    private Date logindate;


    /** 角色id*/
    private String  rolesid;

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getIsenabled() {
        return isenabled;
    }

    public void setIsenabled(String isenabled) {
        this.isenabled = isenabled;
    }

    public String getIslocked() {
        return islocked;
    }

    public void setIslocked(String islocked) {
        this.islocked = islocked;
    }

    public Integer getLoginfailurecount() {
        return loginfailurecount;
    }

    public void setLoginfailurecount(Integer loginfailurecount) {
        this.loginfailurecount = loginfailurecount;
    }

    public Date getLockeddate() {
        return lockeddate;
    }

    public void setLockeddate(Date lockeddate) {
        this.lockeddate = lockeddate;
    }

    public Date getLogindate() {
        return logindate;
    }

    public void setLogindate(Date logindate) {
        this.logindate = logindate;
    }

    public String getRolesid() {
        return rolesid;
    }

    public void setRolesid(String rolesid) {
        this.rolesid = rolesid;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "aid='" + aid + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", realname='" + realname + '\'' +
                ", department='" + department + '\'' +
                ", isenabled='" + isenabled + '\'' +
                ", islocked='" + islocked + '\'' +
                ", loginfailurecount=" + loginfailurecount +
                ", lockeddate=" + lockeddate +
                ", logindate=" + logindate +
                ", rolesid='" + rolesid + '\'' +
                '}';
    }
}
