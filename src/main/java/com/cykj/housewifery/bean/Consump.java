package com.cykj.housewifery.bean;

import java.math.BigDecimal;
import java.sql.Time;
import java.sql.Timestamp;

//用户消费明细表
public class Consump {
    private  int id;                //消费记录ID
    private  int userId;            //用户id
    private Timestamp consumpTime;  //消费时间
    private String consumpTing;     //消费时间
    private BigDecimal consumpMoney;    //消费金额

    public Consump() {
    }

    public Consump(int id, int userId, Timestamp consumpTime, String consumpTing, BigDecimal consumpMoney) {
        this.id = id;
        this.userId = userId;
        this.consumpTime = consumpTime;
        this.consumpTing = consumpTing;
        this.consumpMoney = consumpMoney;
    }

    @Override
    public String toString() {
        return "Consump{" +
                "id=" + id +
                ", userId=" + userId +
                ", consumpTime=" + consumpTime +
                ", consumpTing='" + consumpTing + '\'' +
                ", consumpMoney=" + consumpMoney +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Timestamp getConsumpTime() {
        return consumpTime;
    }

    public void setConsumpTime(Timestamp consumpTime) {
        this.consumpTime = consumpTime;
    }

    public String getConsumpTing() {
        return consumpTing;
    }

    public void setConsumpTing(String consumpTing) {
        this.consumpTing = consumpTing;
    }

    public BigDecimal getConsumpMoney() {
        return consumpMoney;
    }

    public void setConsumpMoney(BigDecimal consumpMoney) {
        this.consumpMoney = consumpMoney;
    }
}
