package com.cykj.housewifery.bean;

import java.util.Date;

//评价实体类
public class UserEvaluation {
    private int id;              //用户评价的主id
    private int orderId;         //评价的订单号
    private String evaluation;   //评价内容
    private Date evaluationDate; //评价时间
    private int userId;          //用户id

    public UserEvaluation() {
    }

    public UserEvaluation(int id, int orderId, String evaluation, Date evaluationDate, int userId) {
        this.id = id;
        this.orderId = orderId;
        this.evaluation = evaluation;
        this.evaluationDate = evaluationDate;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(String evaluation) {
        this.evaluation = evaluation;
    }

    public Date getEvaluationDate() {
        return evaluationDate;
    }

    public void setEvaluationDate(Date evaluationDate) {
        this.evaluationDate = evaluationDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "UserEvaluation{" +
                "id=" + id +
                ", orderId=" + orderId +
                ", evaluation='" + evaluation + '\'' +
                ", evaluationDate=" + evaluationDate +
                ", userId=" + userId +
                '}';
    }
}
