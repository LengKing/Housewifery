package com.cykj.housewifery.bean;

//培训计划
public class Train {
    private int id;             //培训ID
    private String title;       //标题
    private String startDate;   //开始时间
    private String endDate;     //结束时间
    private String content;     //培训内容
    private int count;          //培训人数
    private String length;      //培训时长
    private String credential;  //认证证书
    private String url;         //培训内容路径

    public Train() {
    }

    public Train(int id, String title, String startDate, String endDate, String content, int count, String length, String credential, String url) {
        this.id = id;
        this.title = title;
        this.startDate = startDate;
        this.endDate = endDate;
        this.content = content;
        this.count = count;
        this.length = length;
        this.credential = credential;
        this.url = url;
    }

    @Override
    public String toString() {
        return "Train{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", content='" + content + '\'' +
                ", count=" + count +
                ", length=" + length +
                ", credential='" + credential + '\'' +
                ", url='" + url + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getCredential() {
        return credential;
    }

    public void setCredential(String credential) {
        this.credential = credential;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
