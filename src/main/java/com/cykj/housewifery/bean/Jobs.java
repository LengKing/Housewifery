package com.cykj.housewifery.bean;

public class Jobs {
    private int id;
    private String jobs;
    private String detail;

    public Jobs() {
    }

    public Jobs(int id, String jobs, String detail) {
        this.id = id;
        this.jobs = jobs;
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "Jobs{" +
                "id=" + id +
                ", jobs='" + jobs + '\'' +
                ", detail='" + detail + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJobs() {
        return jobs;
    }

    public void setJobs(String jobs) {
        this.jobs = jobs;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
