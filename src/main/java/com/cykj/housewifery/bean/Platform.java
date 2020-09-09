package com.cykj.housewifery.bean;

//平台管理员
public class Platform {
    private  int id;        //管理员ID
    private  String account;//管理员账号
    private  String password;//管理员密码
    private  int jobs;          //角色

    public Platform() {
    }

    public Platform(int id, String account, String password, int jobs) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.jobs = jobs;
    }

    @Override
    public String toString() {
        return "Platform{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", jobs=" + jobs +
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

    public int getJobs() {
        return jobs;
    }

    public void setJobs(int jobs) {
        this.jobs = jobs;
    }
}
