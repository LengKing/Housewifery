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
    public List<Order> selOrder(String company, Integer pageNum, String limit) {
        List<Order> orders=moneyTbMapper.selOrder(company,pageNum,Integer.valueOf(limit));
        return orders;
    }

    @Override
    public int getCountCompany(String company) {
        int count = moneyTbMapper.getCountCompany(company);
        return count;
    }


}
