package com.cykj.housewifery.bean;

import java.sql.Timestamp;

public class User {
    private  int userId;
    private  String account;
    private  String password;
    private  String gender;
    private String phone;
    private  String address;
    private  int integral;
    private  String url;
    private Timestamp regDate;
    private  Double money;


    public User() {
    }

    public User(int userId, String account, String password, String gender, String phone, String address, int integral, String url, Timestamp regDate, Double money) {
        this.userId = userId;
        this.account = account;
        this.password = password;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
        this.integral = integral;
        this.url = url;
        this.regDate = regDate;
        this.money = money;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", gender='" + gender + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", integral=" + integral +
                ", url='" + url + '\'' +
                ", regDate=" + regDate +
                ", money=" + money +
                '}';
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getIntegral() {
        return integral;
    }

    public void setIntegral(int integral) {
        this.integral = integral;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Timestamp getRegDate() {
        return regDate;
    }

    public void setRegDate(Timestamp regDate) {
        this.regDate = regDate;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }
}
