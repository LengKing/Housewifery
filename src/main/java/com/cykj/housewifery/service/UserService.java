package com.cykj.housewifery.service;


import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.bean.User;

public interface UserService {

    public User login(User user);//用户的登录了
    public boolean add(User user);//用户的注册

    User findUserByAccount(String account);
    ReportDataBean barUser(String startDate, String endDate);
    ReportDataBean lineUser(String startDate, String endDate);

}
