package com.cykj.housewifery.bean;

//家政顾问实体类
public class Counselor {
    private int id;             //顾问ID
    private String number;      //编号
    private String position;    //职位
    private String detail;      //职责

    public Counselor() {
    }

    public Counselor(int id, String number, String position, String detail) {
        this.id = id;
        this.number = number;
        this.position = position;
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "Counselor{" +
                "id=" + id +
                ", number='" + number + '\'' +
                ", position='" + position + '\'' +
                ", detail='" + detail + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
