package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Demand;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.Param;

import java.util.HashMap;
import java.util.List;

public interface OrderService {
    int getOrderCount(String company);
    int getOrderCount(String companyId,String type);
    List<Order> selOrder(String company, Integer pageNum, String limit);
    Order findOrderById(String id);

    boolean grabSingle(String id);

    int getDemandsCount();

    List<Demand> getDemands(Integer pageNum, String limit);

    Object createOrder(String companyId,String id);

    List<Order> companyOrder(Integer pageNum, String limit, String companyId, String type);

    List<Param> allOrderState();

    HashMap<String, Object> orderDetails(String account, String employee);
}
