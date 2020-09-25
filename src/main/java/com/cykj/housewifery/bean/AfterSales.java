package com.cykj.housewifery.bean;

import java.sql.Timestamp;

//售后记录
public class AfterSales {
    private int id;             //id
    private  int orderId;       //订单id
    private Timestamp time;     //时间
    private  String afterWhy;   //售后原因
    private String user;        //用户
    private String company;     //家政公司
    private String employee;    //家政人员
    private  int state;         //状态
    private String stateName;
    private  int houseId;       //家政人员id

    public AfterSales() {
    }

    @Override
    public String toString() {
        return "AfterSales{" +
                "id=" + id +
                ", orderId=" + orderId +
                ", time=" + time +
                ", afterWhy='" + afterWhy + '\'' +
                ", user='" + user + '\'' +
                ", company='" + company + '\'' +
                ", employee='" + employee + '\'' +
                ", state=" + state +
                ", stateName='" + stateName + '\'' +
                ", houseId=" + houseId +
                '}';
    }

    public AfterSales(int id, int orderId, Timestamp time, String afterWhy, String user, String company, String employee, int state, String stateName, int houseId) {
        this.id = id;
        this.orderId = orderId;
        this.time = time;
        this.afterWhy = afterWhy;
        this.user = user;
        this.company = company;
        this.employee = employee;
        this.state = state;
        this.stateName = stateName;
        this.houseId = houseId;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getAfterWhy() {
        return afterWhy;
    }

    public void setAfterWhy(String afterWhy) {
        this.afterWhy = afterWhy;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getHouseId() {
        return houseId;
    }

    public void setHouseId(int houseId) {
        this.houseId = houseId;
    }
}
