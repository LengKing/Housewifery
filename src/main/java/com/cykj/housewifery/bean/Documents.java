package com.cykj.housewifery.bean;


public class Documents {//家政公司资质文件表
    private  int id;
    private  String title;
    private  String url;
    private String companyId;

    public Documents() {
    }

    public Documents(int id, String title, String url, String companyId) {
        this.id = id;
        this.title = title;
        this.url = url;
        this.companyId = companyId;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    @Override
    public String toString() {
        return "Documents{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", url='" + url + '\'' +
                ", companyId='" + companyId + '\'' +
                '}';
    }
}
