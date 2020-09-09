package com.cykj.housewifery.bean;

//菜单表
public class Menu {
    private int id;          //菜单ID
    private String name;     //菜单名
    private String url;      //菜单路径
    private int pid;         //父菜单ID

    public Menu() {
    }

    public Menu(int id, String name, String url, int pid) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "Menu{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", pid=" + pid +
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }
}
