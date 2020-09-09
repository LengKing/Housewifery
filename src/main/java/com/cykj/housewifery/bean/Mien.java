package com.cykj.housewifery.bean;

//培训风采实体类
public class Mien {
    private int id;                 //风采ID
    private String title;           //标题
    private String detail;          //内容描述
    private String type;            //类型
    private String showDate;        //展示时间
    private String url;             //内容路径

    public Mien() {
    }

    public Mien(int id, String title, String detail, String type, String showDate, String url) {
        this.id = id;
        this.title = title;
        this.detail = detail;
        this.type = type;
        this.showDate = showDate;
        this.url = url;
    }

    @Override
    public String toString() {
        return "Mien{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", detail='" + detail + '\'' +
                ", type='" + type + '\'' +
                ", showDate='" + showDate + '\'' +
                ", url='" + url + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getShowDate() {
        return showDate;
    }

    public void setShowDate(String showDate) {
        this.showDate = showDate;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
