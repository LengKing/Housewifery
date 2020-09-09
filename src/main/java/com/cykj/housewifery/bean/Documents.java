package com.cykj.housewifery.bean;

//家政公司资质文件表
public class Documents {
    private  int id;            //文件ID
    private  String title;      //标题
    private  String url;        //url
    private String companyId;   //公司ID

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
