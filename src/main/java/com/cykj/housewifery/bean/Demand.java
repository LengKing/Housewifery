package com.cykj.housewifery.bean;

import java.util.Date;

//用户需求实体类
public class Demand {
    private int id;                 //需求表 主id
    private int userId;             //用户id
    private String name;            //用户名
    private String address;         //详细地址
    private String classService;    //服务类别
    private int serviceCount;       //服务频次 次数
    private String title;           //标题
    private String described;       //要求描述
    private String phone;           //用户联系方式
    private Date releaseTime;       //发布时间
    private String state;           //状态 默认初始待服务
    private String payState;  //支付状态
    private String names;            //对应参数表支付状态的名字
    public Demand() {
    }

    public String getPayState() {
        return payState;
    }

    public void setPayState(String payState) {
        this.payState = payState;
    }

    public Demand(int id, int userId, String name, String address, String classService, int serviceCount, String title, String described, String phone, Date releaseTime, String state, String payState, String names) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.address = address;
        this.classService = classService;
        this.serviceCount = serviceCount;
        this.title = title;
        this.described = described;
        this.phone = phone;
        this.releaseTime = releaseTime;
        this.state = state;
        this.payState = payState;
        this.names = names;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
    }

    @Override
    public String toString() {
        return "Demand{" +
                "id=" + id +
                ", userId=" + userId +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", classService='" + classService + '\'' +
                ", serviceCount=" + serviceCount +
                ", title='" + title + '\'' +
                ", described='" + described + '\'' +
                ", phone='" + phone + '\'' +
                ", releaseTime=" + releaseTime +
                ", state='" + state + '\'' +
                ", payState='" + payState + '\'' +
                ", names='" + names + '\'' +
                '}';
    }
}
