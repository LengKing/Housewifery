package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.mapper.OrderMapper;
import com.cykj.housewifery.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

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
}
