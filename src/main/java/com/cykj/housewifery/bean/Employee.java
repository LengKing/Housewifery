package com.cykj.housewifery.bean;

import java.sql.Date;

//家政员工实体类
public class Employee {
    private Integer id;             //员工ID
    private Integer number;         //员工编号
    private String password;        //密码
    private String name;            //姓名
    private String gender;          //性别
    private int age;                //年龄
    private Date birthday;          //出生年月日
    private String school;          //学历
    private String skill;           //技能
    private String job;             //职位
    private String label;           //标签
    private Integer state;          //员工状态

    public Employee() {
    }

    public Employee(Integer id, Integer number, String password, String name, String gender, int age, Date birthday, String school, String skill, String job, String label, Integer state) {
        this.id = id;
        this.number = number;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.birthday = birthday;
        this.school = school;
        this.skill = skill;
        this.job = job;
        this.label = label;
        this.state = state;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", number=" + number +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", birthday=" + birthday +
                ", school='" + school + '\'' +
                ", skill='" + skill + '\'' +
                ", job='" + job + '\'' +
                ", label='" + label + '\'' +
                ", state=" + state +
                '}';
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }


}
