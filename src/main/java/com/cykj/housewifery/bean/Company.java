package com.cykj.housewifery.bean;

import java.math.BigDecimal;
import java.sql.Timestamp;

//家政公司
public class Company {
    private int id;                 //公司ID
    private  String name;           //公司名称
    private  String password;       //登录密码
    private  String legal;          //法人代表
    private  String address;        //公司地址
    private  String phone;          //公司联系方式
    private  int state;             //公司状态
    private Timestamp entryDate;     //入驻时间
    private String account;   //账户
    private BigDecimal money;   //资金
    private String area;              //公司服务区域
    private String stateName;     //对应参数表状态
    private String areaName;      //对应服务区域表 区域
    private int jobs;             //角色
    private String date1;

    public Company() {
    }


    public Company(int id, String name, String password, String legal, String address, String phone, int state, Timestamp entryDate, String account, BigDecimal money, String area, String stateName, String areaName, int jobs) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.legal = legal;
        this.address = address;
        this.phone = phone;
        this.state = state;
        this.entryDate = entryDate;
        this.account = account;
        this.money = money;
        this.area = area;
        this.stateName = stateName;
        this.areaName = areaName;
        this.jobs = jobs;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", legal='" + legal + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", state=" + state +
                ", entryDate=" + entryDate +
                ", account='" + account + '\'' +
                ", money=" + money +
                ", area='" + area + '\'' +
                ", stateName='" + stateName + '\'' +
                ", areaName='" + areaName + '\'' +
                ", jobs=" + jobs +
                '}';
    }

    public int getJobs() {
        return jobs;
    }

    public void setJobs(int jobs) {
        this.jobs = jobs;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Timestamp getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(Timestamp entryDate) {
        this.entryDate = entryDate;
    }
}
