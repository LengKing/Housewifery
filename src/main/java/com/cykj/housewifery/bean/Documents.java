package com.cykj.housewifery.bean;

//材料，资料文件表
public class Documents {
    private  int id;            //文件ID
    private  Integer documentType;      //材料类型
    private  String url;        //url
    private String companyId;   //公司ID
    private String employee;  //员工名或员工号
    private String name;   //类型名
    private int count;  //文件总数；

    public Documents() {
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

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
    }

    @Override
    public String toString() {
        return "Documents{" +
                "id=" + id +
                ", documentType=" + documentType +
                ", url='" + url + '\'' +
                ", companyId='" + companyId + '\'' +
                ", employee='" + employee + '\'' +
                ", name='" + name + '\'' +
                ", count=" + count +
                '}';
    }
}
