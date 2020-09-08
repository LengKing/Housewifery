package com.cykj.housewifery.bean;

import java.math.BigDecimal;
import java.sql.Date;

public class CompanyAccountDetails {
    private Integer id;
    private Date date;
    private String sourcesOfFunding;
    private String MoneyTo;
    private BigDecimal money;
    private String operationType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getSourcesOfFunding() {
        return sourcesOfFunding;
    }

    public void setSourcesOfFunding(String sourcesOfFunding) {
        this.sourcesOfFunding = sourcesOfFunding;
    }

    public String getMoneyTo() {
        return MoneyTo;
    }

    public void setMoneyTo(String moneyTo) {
        MoneyTo = moneyTo;
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
