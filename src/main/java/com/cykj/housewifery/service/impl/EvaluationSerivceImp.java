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
    public List<Order> evaluation(String account, Integer pageNum, String limit) {
        List<Order> orders = evaluationMapper.evaluation(account,pageNum,Integer.valueOf(limit));
        return orders;
    }

    @Override
    public int getCountCompany(String account) {
        int count = evaluationMapper.getCountCompany(account);
        return count;
    }

    @Override
    public boolean delEvaluation(String id) {
        int a=evaluationMapper.delEvaluation(id);
        return a>0;
    }

    @Override
    public String findEvaluation(String id) {
        evaluationMapper.updateState(id);
        String evaluation=evaluationMapper.findEvaluation(id);
        return evaluation;
    }

    @Override
    public boolean addEvaluation(String id, String comment) {
        int a=evaluationMapper.updateEvaState(id);
        a=evaluationMapper.addEvaluation(Integer.valueOf(id),comment);
        return a>0;
    }
}
