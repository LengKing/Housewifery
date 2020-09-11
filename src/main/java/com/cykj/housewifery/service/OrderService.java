package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Order;

import java.util.List;

public interface OrderService {
    int getOrderCount(String company);
    List<Order> selOrder(String company, Integer pageNum, String limit);

}
