package com.cykj.housewifery.bean;

import java.util.List;

/**
 * 图表对象
 */
public class ReportDataBean {

    private List<String> categories;
    private List<Integer> data;

    public List<Integer> getDatas() {
        return datas;
    }

    public void setDatas(List<Integer> datas) {
        this.datas = datas;
    }

    private List<Integer> datas;
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
