package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.mapper.MoneyTbMapper;
import com.cykj.housewifery.service.MoneyTbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("OrderSelect")
public
class MoneyTbServiceImp implements MoneyTbService {



    @Autowired
    public MoneyTbMapper moneyTbMapper;

    @Override
    public List<Order> selOrder(String account, Integer pageNum, String limit) {
        List<Order> orders=moneyTbMapper.selOrder(account,pageNum,Integer.valueOf(limit));
        return orders;
    }

    @Override
    public int getCountCompany(String account) {
        int count = moneyTbMapper.getCountCompany(account);
        return count;
    }

    @Override
    public boolean overOrder(String id) {
        int a=moneyTbMapper.overOrder(Integer.valueOf(id));
        return a>0;
    }

    @Override
    public boolean addAfter(String id, String why) {
        int a=moneyTbMapper.addAfter(Integer.valueOf(id),why);
        return a>0;
    }


}
