package com.cykj.housewifery.bean;

import java.util.Date;

public class ServiceArea {
    private int id;//服务区域表 主id
    private int companyId;//公司id
    private String area;//服务区域
    private Date date;//覆盖时间

    public ServiceArea() {
    }

    public ServiceArea(int id, int companyId, String area, Date date) {
        this.id = id;
        this.companyId = companyId;
        this.area = area;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "ServiceArea{" +
                "id=" + id +
                ", companyId=" + companyId +
                ", area='" + area + '\'' +
                ", date=" + date +
                '}';
    }
}
