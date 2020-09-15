package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.bean.User;
import com.cykj.housewifery.mapper.CompanyMapper;
import com.cykj.housewifery.mapper.UserMapper;
import com.cykj.housewifery.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Autowired
    public UserMapper userMapper;

    @Autowired
    private CompanyMapper companyMapper;

    @Override

    public User login(User user) {
        User userLogin = null;
        userLogin = userMapper.login(user);
        return userLogin;
    }

    @Override
    public boolean add(User user) {
        int a = 0;
        a = userMapper.add(user);
        return a > 0;

    }

    @Override
    public ReportDataBean barUser(String startDate, String endDate) {
        List<String> dates=companyMapper.allDate(startDate,endDate);
        Collections.reverse(dates);
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=userMapper.barUser(date);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public ReportDataBean lineUser(String startDate, String endDate) {
        List<String> dates=companyMapper.allDate(startDate,endDate);
        Collections.reverse(dates);
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=userMapper.lineUser(date);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public User findUserByAccount(String account) {
        User user = userMapper.findUserByAccount(account);
        return user;
    }
}
