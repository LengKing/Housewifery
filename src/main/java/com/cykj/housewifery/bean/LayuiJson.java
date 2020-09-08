package com.cykj.housewifery.bean;

import java.util.HashMap;

public class LayuiJson {
    private Integer code;
    private String msg;
    private Integer count;
    private Object data;
    private Integer pageNum;
    private Integer limit;
    private HashMap<String,Object> condition;

    public HashMap<String, Object> getCondition() {
        return condition;
    }

    public void setCondition(HashMap<String, Object> condition) {
        this.condition = condition;
    }

    public Integer getCode() {
        return code;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
