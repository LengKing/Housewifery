package com.cykj.housewifery.service;


import com.cykj.housewifery.bean.Address;
import com.cykj.housewifery.bean.Consump;
import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.bean.User;

import java.util.List;

public interface UserService {

    public User login(User user);//用户的登录了
    public boolean add(User user);//用户的注册

    User findUserByAccount(String account);
    ReportDataBean barUser(String startDate, String endDate);
    ReportDataBean lineUser(String startDate, String endDate);
    List<User> userAddress(String user,Integer pageNum, String limit);
    int getAddressCount(String user);

    int getRecordsCount(String account);

    List<Consump> getRecordsList(String account, Integer pageNum, String limit);

    String setBankCard(String account, String bankCard);

    String transfer(String account, String money);

    String topUp(String account, String money);

    int getAddCount(String account);
    List<Address> getAddress(String account, Integer pageNum, String limit);
    boolean updAddress(Integer id, String address);

    boolean delAddress(Integer id);

    boolean addAddress(String address,String account);
}
