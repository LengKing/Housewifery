package com.cykj.housewifery.bean;

import java.util.Date;

//公告
public class Affiche {
    private int id;             //公告动态表 主id
    private Date releasrDate;   //发布时间
    private String title;       //标题
    private String describes;    //描述

    public Affiche() {
    }

    public Affiche(int id, Date releasrDate, String title, String describes) {
        this.id = id;
        this.releasrDate = releasrDate;
        this.title = title;
        this.describes = describes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getReleasrDate() {
        return releasrDate;
    }

    public void setReleasrDate(Date releasrDate) {
        this.releasrDate = releasrDate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    @Override
    public String toString() {
        return "Affiche{" +
                "id=" + id +
                ", releasrDate=" + releasrDate +
                ", title='" + title + '\'' +
                ", describes='" + describes + '\'' +
                '}';
    }
}
