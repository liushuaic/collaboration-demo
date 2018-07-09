package com.jk.model;

import java.io.Serializable;

/* 消息 */
public class Message implements Serializable {

    private static final long serialVersionUID = -3509210021566131807L;

    /* id */
    private  String mid;

    /** 标题 */
    private String title;

    /** 内容 */
    private String content;

    /** ip */
    private String ip;

    /** 是否为草稿  1 yes 2 no */
    private String isdraft;

    /** 发件人已读  1 yes 2 no */
    private String senderread;

    /** 收件人已读  1 yes 2 no */
    private String receiverread;

    /** 发件人删除 * 1 yes 2 no /
    private String senderdelete;

    /** 收件人删除  1 yes 2 no */
    private String receiverdelete;

    /** 发件人 */
    private String sender;

    /** 收件人 */
    private String receiver;

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getIsdraft() {
        return isdraft;
    }

    public void setIsdraft(String isdraft) {
        this.isdraft = isdraft;
    }

    public String getSenderread() {
        return senderread;
    }

    public void setSenderread(String senderread) {
        this.senderread = senderread;
    }

    public String getReceiverread() {
        return receiverread;
    }

    public void setReceiverread(String receiverread) {
        this.receiverread = receiverread;
    }

    public String getReceiverdelete() {
        return receiverdelete;
    }

    public void setReceiverdelete(String receiverdelete) {
        this.receiverdelete = receiverdelete;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    @Override
    public String toString() {
        return "Message{" +
                "mid='" + mid + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", ip='" + ip + '\'' +
                ", isdraft='" + isdraft + '\'' +
                ", senderread='" + senderread + '\'' +
                ", receiverread='" + receiverread + '\'' +
                ", receiverdelete='" + receiverdelete + '\'' +
                ", sender='" + sender + '\'' +
                ", receiver='" + receiver + '\'' +
                '}';
    }
}
