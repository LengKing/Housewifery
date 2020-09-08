package com.cykj.housewifery.bean;

import java.math.BigDecimal;
import java.sql.Time;
import java.sql.Timestamp;

//用户消费明细表
public class consump {
    private  int id;
    private  int userId;
    private Timestamp consumpTime;
    private String consumpTing;
    private BigDecimal consumpMoney;

    public consump() {
    }

    public consump(int id, int userId, Timestamp consumpTime, String consumpTing, BigDecimal consumpMoney) {
        this.id = id;
        this.userId = userId;
        this.consumpTime = consumpTime;
        this.consumpTing = consumpTing;
        this.consumpMoney = consumpMoney;
    }

    @Override
    public String toString() {
        return "consump{" +
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
