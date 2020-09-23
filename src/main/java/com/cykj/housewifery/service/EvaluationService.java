package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Order;


import java.util.List;

public interface EvaluationService {
    List<Order> evaluation(String company,Integer pageNum, String limit);
    int getCountCompany(String company);
}
