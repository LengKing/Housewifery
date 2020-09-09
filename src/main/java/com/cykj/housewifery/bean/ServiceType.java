package com.cykj.housewifery.bean;

//服务类别
public class ServiceType {
    private Integer id;     //类别ID
    private String typeName;//服务类别名称
    private String name;    //服务名
    private Integer pid;    //父类别ID

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
}
