package com.cykj.housewifery.bean;

import java.sql.Timestamp;
import java.util.Date;

//服务区域
public class ServiceArea {
    private int id;         //服务区域表 主id
    private int companyId;  //公司id
    private String area;    //服务区域
    private Date date;      //覆盖时间

    private String name;   //查到的公司名
    private  String legal;          //法人代表
    private  String address;        //公司地址
    private  String phone;          //公司联系方式
    private Timestamp entryDate;     //入驻时间

    public ServiceArea() {
    }

    public ServiceArea(int id, int companyId, String area, Date date, String name, String legal, String address, String phone, Timestamp entryDate) {
        this.id = id;
        this.companyId = companyId;
        this.area = area;
        this.date = date;
        this.name = name;
        this.legal = legal;
        this.address = address;
        this.phone = phone;
        this.entryDate = entryDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getLegal() {
        return legal;
    }

    public void setLegal(String legal) {
        this.legal = legal;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Timestamp getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(Timestamp entryDate) {
        this.entryDate = entryDate;
    }

    @Override
    public String toString() {
        return "ServiceArea{" +
                "id=" + id +
                ", companyId=" + companyId +
                ", area='" + area + '\'' +
                ", date=" + date +
                ", name='" + name + '\'' +
                ", legal='" + legal + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", entryDate=" + entryDate +
                '}';
    }
}
