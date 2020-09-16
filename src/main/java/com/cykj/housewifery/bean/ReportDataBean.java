package com.cykj.housewifery.bean;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * 图表对象
 */
public class ReportDataBean {

    private List<String> categories;
    private List<Integer> data;
    private Map<String,Integer> count;
    private List<Integer> datas;
    private List<BigDecimal> cost;

    public List<BigDecimal> getCost() {
        return cost;
    }

    public void setCost(List<BigDecimal> cost) {
        this.cost = cost;
    }

    public Map<String, Integer> getCount() {
        return count;
    }

    public void setCount(Map<String, Integer> count) {
        this.count = count;
    }

    public List<Integer> getDatas() {
        return datas;
    }

    public void setDatas(List<Integer> datas) {
        this.datas = datas;
    }


    public List<String> getCategories() {
        return categories;
    }

    public void setCategories(List<String> categories) {
        this.categories = categories;
    }

    public List<Integer> getData() {
        return data;
    }

    public void setData(List<Integer> data) {
        this.data = data;
    }
}
