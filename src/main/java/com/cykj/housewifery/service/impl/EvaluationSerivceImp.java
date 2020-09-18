package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.mapper.EvaluationMapper;
import com.cykj.housewifery.service.EvaluationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("Evaluation")
public class EvaluationSerivceImp implements EvaluationService {

    @Autowired
   private EvaluationMapper evaluationMapper;


    @Override
    public List<Order> evaluation(String company, Integer pageNum, String limit) {
        List<Order> orders = evaluationMapper.evaluation(company,pageNum,Integer.valueOf(limit));
        return orders;
    }

    @Override
    public int getCountCompany(String company) {
        int count = evaluationMapper.getCountCompany(company);
        return count;
    }
}
