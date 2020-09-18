package com.cykj.housewifery.bean;

//服务类别
public class ServiceType {
    private Integer id;     //类别ID
    private String typeName;//服务类别名称
    private String name;    //服务名
    private Integer pid;    //父类别ID

    private Integer id1;
    private String pid1;

    public ServiceType() {
    }

    public ServiceType(Integer id, String typeName, String name, Integer pid, Integer id1, String pid1) {
        this.id = id;
        this.typeName = typeName;
        this.name = name;
        this.pid = pid;
        this.id1 = id1;
        this.pid1 = pid1;
    }

    public String getPid1() {
        return pid1;
    }

    public void setPid1(String pid1) {
        this.pid1 = pid1;
    }

    public Integer getId1() {
        return id1;
    }

    public void setId1(Integer id1) {
        this.id1 = id1;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "ServiceType{" +
                "id=" + id +
                ", typeName='" + typeName + '\'' +
                ", name='" + name + '\'' +
                ", pid=" + pid +
                ", id1=" + id1 +
                ", pid1='" + pid1 + '\'' +
                '}';
    }
}
