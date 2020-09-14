package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.mapper.CompanyMapper;
import com.cykj.housewifery.mapper.OrderMapper;
import com.cykj.housewifery.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private CompanyMapper companyMapper;

    @Override
    public int getOrderCount(String company) {
        int count =orderMapper.getOrderCount(company);
        return count;
    }

    @Override
    public List<Order> selOrder(String company, Integer pageNum, String limit) {
        List<Order> orders=orderMapper.selOrder(company,pageNum,Integer.valueOf(limit));
        return orders;
    }

    @Override
    public Order findOrderById(String id) {
       Order order=orderMapper.findOrderById(id);
       return order;
    }

    @Override
    public ReportDataBean barOrder(String startDate, String endDate, String company) {
        List<String> dates=companyMapper.allDate(startDate,endDate);
        Collections.reverse(dates);
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=orderMapper.barOrder(date,company);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public ReportDataBean lineOrder(String startDate, String endDate, String company) {
        List<String> dates=companyMapper.allDate(startDate,endDate);
        Collections.reverse(dates);
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=orderMapper.lineOrder(date,company);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }
}
