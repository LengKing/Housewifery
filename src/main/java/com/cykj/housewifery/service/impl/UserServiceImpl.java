package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.*;
import com.cykj.housewifery.mapper.CompanyMapper;
import com.cykj.housewifery.mapper.UserMapper;
import com.cykj.housewifery.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
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
//地址的
    @Override
    public List<User> userAddress(String user, Integer pageNum, String limit) {
        List<User> users = userMapper.userAddress(user,pageNum,Integer.valueOf(limit));


        return users;
    }

    @Override
    public int getAddressCount(String user) {
        int count = userMapper.getAddressCount(user);
        return count;
    }

    @Override
    public int getRecordsCount(String account) {
        int count = userMapper.getRecordsCount( account);
        return count;
    }

    @Override
    public List<Consump> getRecordsList(String account, Integer pageNum, String limit) {
        List<Consump> consumps= userMapper.getRecordsList( account,pageNum,Integer.valueOf(limit));
        return consumps;
    }

    @Override
    public String setBankCard(String account, String bankCard) {
        int n = userMapper.setBankCard( account, bankCard);
        if (n>0){
            return "success";
        }else {
            return "fail";
        }
    }

    @Override
    public String transfer(String account, String money) {
        int n = userMapper.consumption(account,money);
        if (n>0){
            Consump consump = new Consump();
            consump.setUserId(Integer.valueOf(account));
            consump.setConsumpTing("转账");
            consump.setConsumpMoney(new BigDecimal(money));
            int n1 = userMapper.insertRecords(consump);
            if (n1>0){
                return "success";
            }else {
                return "转账失败，请稍后再试";
            }
        }else {
            return "账户余额不足";
        }
    }

    @Override
    public String topUp(String account, String money) {
        int n = userMapper.topUp(account,money);
        if (n>0){
            return "success";
        }else {
            return "fail";
        }
    }

    @Override
    public int getAddCount(String account) {
        int count=userMapper.getAddCount(account);
        return count;
    }

    @Override
    public List<Address> getAddress(String account, Integer pageNum, String limit) {
       List<Address> addresses=userMapper.getAddress(account,pageNum,Integer.valueOf(limit));
       return addresses;
    }

    @Override
    public boolean updAddress(Integer id, String address) {
       int a=userMapper.updAddress(id,address);
       return a>0;
    }

    @Override
    public boolean delAddress(Integer id) {
        int a=userMapper.delAddress(id);
        return a>0;
    }

    @Override
    public boolean addAddress(String address,String account) {
       int a=userMapper.addAddress(address,account);
       return a>0;
    }

    @Override
    public User findUserByAccount(String account) {
        User user = userMapper.findUserByAccount(account);
        return user;
    }
}
