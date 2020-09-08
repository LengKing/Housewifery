package com.cykj.housewifery.bean;

import java.sql.Timestamp;

public class Company {
    private int id;
    private  String name;
    private  String password;
    private  String legal;
    private  String address;
    private  String phone;
    private  int state;
    private Timestamp entryDate;

    public Company() {
    }

    public Company(int id, String name, String password, String legal, String address, String phone, int state, Timestamp entryDate) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.legal = legal;
        this.address = address;
        this.phone = phone;
        this.state = state;
        this.entryDate = entryDate;
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
                '}';
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
