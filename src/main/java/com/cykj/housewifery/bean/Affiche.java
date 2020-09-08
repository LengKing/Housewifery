package com.cykj.housewifery.bean;

import java.util.Date;

public class Affiche {
    private int id;//公告动态表 主id
    private Date releasrDate;//发布时间
    private String title;//标题
    private String describe;//描述

    public Affiche() {
    }

    public Affiche(int id, Date releasrDate, String title, String describe) {
        this.id = id;
        this.releasrDate = releasrDate;
        this.title = title;
        this.describe = describe;
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

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "affiche{" +
                "id=" + id +
                ", releasrDate=" + releasrDate +
                ", title='" + title + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }
}
