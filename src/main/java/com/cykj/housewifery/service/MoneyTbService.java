package com.cykj.housewifery.service;


import com.cykj.housewifery.bean.Order;

import java.util.List;


public interface MoneyTbService {
    List<Order> selOrder(String account,Integer pageNum, String limit);
    int getCountCompany(String account);
    boolean overOrder(String id);
    boolean addAfter(String id, String why);
}
