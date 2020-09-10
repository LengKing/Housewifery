package com.cykj.housewifery.bean;

//家政公司资质文件表
public class Documents {
    private  int id;            //文件ID
    private  Integer documentType;      //类型
    private  String url;        //url
    private String companyId;   //公司ID
    private String name;   //类型名
    private int count;  //文件总数；

    public Documents() {
    }

    public Documents(int id, Integer documentType, String url, String companyId, String name, int count) {
        this.id = id;
        this.documentType = documentType;
        this.url = url;
        this.companyId = companyId;
        this.name = name;
        this.count = count;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Integer getDocumentType() {
        return documentType;
    }

    public void setDocumentType(Integer documentType) {
        this.documentType = documentType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Documents{" +
                "id=" + id +
                ", documentType=" + documentType +
                ", url='" + url + '\'' +
                ", companyId='" + companyId + '\'' +
                ", name='" + name + '\'' +
                ", count=" + count +
                '}';
    }
}
