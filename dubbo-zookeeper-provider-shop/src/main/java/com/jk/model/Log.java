package com.jk.model;

import java.io.Serializable;

/* 日志管理*/
public class Log implements Serializable {

    private static final long serialVersionUID = 2429751320713054611L;

    /* id */
    private String lid;

    /** 操作 */
    private String operation;

    /** 操作员 */
    private String operator;

    /** 内容 */
    private String content;

    /** 请求参数 */
    private String parameter;

    /** IP */
    private String ip;

    public String getLid() {
        return lid;
    }

    public void setLid(String lid) {
        this.lid = lid;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getParameter() {
        return parameter;
    }

    public void setParameter(String parameter) {
        this.parameter = parameter;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    @Override
    public String toString() {
        return "Log{" +
                "lid='" + lid + '\'' +
                ", operation='" + operation + '\'' +
                ", operator='" + operator + '\'' +
                ", content='" + content + '\'' +
                ", parameter='" + parameter + '\'' +
                ", ip='" + ip + '\'' +
                '}';
    }
}
