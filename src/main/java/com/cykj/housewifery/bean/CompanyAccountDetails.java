package com.cykj.housewifery.bean;

import java.math.BigDecimal;
import java.sql.Date;

//家政公司账户明细表
public class CompanyAccountDetails {
    private Integer id;                 //消费记录ID
    private Date happenTime;                  //发生时间
    private String sourcesOfFunding;    //资金来源
    private String moneyTo;             //资金去向
    private BigDecimal money;           //金额
    private String operationType;       //操作类型
    private Integer companyId;    //所属公司

    public CompanyAccountDetails() {
    }

    public CompanyAccountDetails(Integer id, Date happenTime, String sourcesOfFunding, String moneyTo, BigDecimal money, String operationType) {
        this.id = id;
        this.happenTime = happenTime;
        this.sourcesOfFunding = sourcesOfFunding;
        this.moneyTo = moneyTo;
        this.money = money;
        this.operationType = operationType;
    }

    @Override
    public String toString() {
        return "CompanyAccountDetails{" +
                "id=" + id +
                ", happenTime=" + happenTime +
                ", sourcesOfFunding='" + sourcesOfFunding + '\'' +
                ", moneyTo='" + moneyTo + '\'' +
                ", money=" + money +
                ", operationType='" + operationType + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getHappenTime() {
        return happenTime;
    }

    public void setHappenTime(Date happenTime) {
        this.happenTime = happenTime;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getSourcesOfFunding() {
        return sourcesOfFunding;
    }

    public void setSourcesOfFunding(String sourcesOfFunding) {
        this.sourcesOfFunding = sourcesOfFunding;
    }

    public String getMoneyTo() {
        return moneyTo;
    }

    public void setMoneyTo(String moneyTo) {
        this.moneyTo = moneyTo;
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public String getOperationType() {
        return operationType;
    }

    public void setOperationType(String operationType) {
        this.operationType = operationType;
    }
}
