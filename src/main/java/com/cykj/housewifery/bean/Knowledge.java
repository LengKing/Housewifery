package com.cykj.housewifery.bean;

//知识实体类
public class Knowledge {
    private int id;             //知识ID
    private String title;       //标题
    private String type;        //知识类型
    private String addDate;     //添加时间
    private String url;         //知识内容路径

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
