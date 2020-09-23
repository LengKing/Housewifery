package com.cykj.housewifery.bean;

public class Admin {

    private int id;             //平台管理员 id
    private String account;  //管理员账号
    private  String password;//管理员密码
    private  String jobs;   //角色


    public Admin() {
    }

    public Admin(int id, String account, String password, String jobs) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.jobs = jobs;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", jobs='" + jobs + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getJobs() {
        return jobs;
    }

    public void setJobs(String jobs) {
        this.jobs = jobs;
    }
}
