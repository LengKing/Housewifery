package com.cykj.housewifery.bean;

import java.util.Date;

public class Demand {
    private int id;//需求表 主id
    private int userId;//用户id
    private String address;//详细地址
    private String classService;//服务类别
    private int serviceCount;//服务频次 次数
    private String title;//标题
    private String described;//要求描述
    private String phone;//用户联系方式
    private Date releaseTime;//发布时间
    private String state;//状态 默认初始待服务

    public Demand() {
    }

    public Demand(int id, int userId, String address, String classService, int serviceCount, String title, String described, String phone, Date releaseTime, String state) {
        this.id = id;
        this.userId = userId;
        this.address = address;
        this.classService = classService;
        this.serviceCount = serviceCount;
        this.title = title;
        this.described = described;
        this.phone = phone;
        this.releaseTime = releaseTime;
        this.state = state;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getClassService() {
        return classService;
    }

    public void setClassService(String classService) {
        this.classService = classService;
    }

    public int getServiceCount() {
        return serviceCount;
    }

    public void setServiceCount(int serviceCount) {
        this.serviceCount = serviceCount;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescribed() {
        return described;
    }

    public void setDescribed(String described) {
        this.described = described;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Demand{" +
                "id=" + id +
                ", userId=" + userId +
                ", address='" + address + '\'' +
                ", classService='" + classService + '\'' +
                ", serviceCount=" + serviceCount +
                ", title='" + title + '\'' +
                ", described='" + described + '\'' +
                ", phone='" + phone + '\'' +
                ", releaseTime=" + releaseTime +
                ", state='" + state + '\'' +
                '}';
    }
}
