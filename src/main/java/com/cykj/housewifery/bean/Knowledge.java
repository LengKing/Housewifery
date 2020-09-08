package com.cykj.housewifery.bean;

public class Knowledge {
    private int id;
    private String title;
    private String type;
    private String addDate;
    private String url;

    public Knowledge() {
    }

    public Knowledge(int id, String title, String type, String addDate, String url) {
        this.id = id;
        this.title = title;
        this.type = type;
        this.addDate = addDate;
        this.url = url;
    }

    @Override
    public String toString() {
        return "Knowledge{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", type='" + type + '\'' +
                ", addDate='" + addDate + '\'' +
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddDate() {
        return addDate;
    }

    public void setAddDate(String addDate) {
        this.addDate = addDate;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
