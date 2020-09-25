package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Order;
import java.util.List;

public interface EvaluationService {
    List<Order> evaluation(String account,Integer pageNum, String limit);
    int getCountCompany(String account);
    boolean delEvaluation(String id);
    String findEvaluation(String id);
    boolean addEvaluation(String id, String comment);
}
