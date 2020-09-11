package com.cykj.housewifery.bean;

import java.math.BigDecimal;
import java.util.Date;

//订单表
public class Order {
    private int id;             //订单表 主id
    private String user;         //服务对象
    private String serviceName; //服务名
    private String type;           //所属类别 对应服务列表
    private String count;          //服务频次
    private String date;          //下单时间
    private String serviceDate;   //服务时间
    private BigDecimal cost;    //费用
    private String employee; //服务人
    private String company; //家政公司名称
    private String state;       //状态
    private String payState;    //支付状态

    public Order() {
    }

    public Order(int id, String user, String serviceName, String type, String count, String date, String serviceDate, BigDecimal cost, String employee, String company, String state, String payState) {
        this.id = id;
        this.user = user;
        this.serviceName = serviceName;
        this.type = type;
        this.count = count;
        this.date = date;
        this.serviceDate = serviceDate;
        this.cost = cost;
        this.employee = employee;
        this.company = company;
        this.state = state;
        this.payState = payState;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", serviceName='" + serviceName + '\'' +
                ", type='" + type + '\'' +
                ", count='" + count + '\'' +
                ", date='" + date + '\'' +
                ", serviceDate='" + serviceDate + '\'' +
                ", cost=" + cost +
                ", employee='" + employee + '\'' +
                ", company='" + company + '\'' +
                ", state='" + state + '\'' +
                ", payState='" + payState + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getServiceDate() {
        return serviceDate;
    }

    public void setServiceDate(String serviceDate) {
        this.serviceDate = serviceDate;
    }

    public BigDecimal getCost() {
        return cost;
    }

    public void setCost(BigDecimal cost) {
        this.cost = cost;
    }

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPayState() {
        return payState;
    }

    public void setPayState(String payState) {
        this.payState = payState;
    }
}
