package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.ReportDataBean;

import java.util.List;

public interface OrderService {
    int getOrderCount(String company);
    List<Order> selOrder(String company, Integer pageNum, String limit);
    Order findOrderById(String id);
    ReportDataBean barOrder(String startDate, String endDate, String company);
    ReportDataBean lineOrder(String startDate, String endDate, String company);

}
