package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.*;
import com.cykj.housewifery.mapper.CompanyMapper;
import com.cykj.housewifery.mapper.TrainMapper;
import com.cykj.housewifery.service.TrainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service("trainService")
public class TrainServiceImpl implements TrainService {

    @Autowired
    private TrainMapper trainMapper;


    @Override
    public int getTrainCount() {
        int trainCount=trainMapper.getTrainCount();
        return trainCount;
    }

    @Override
    public List<Train> selTrain(Integer pageNum, String limit) {
        LayuiJson layuiJson = new LayuiJson();
        layuiJson.setPageNum(pageNum);
        layuiJson.setLimit(Integer.valueOf(limit));
        List<Train> list = trainMapper.selTrain(layuiJson);
        return list;
    }

    @Override
    public Train findTrainById(String id) {
        Train train=trainMapper.findTrainById(id);
        return train;
    }

    @Override
    public boolean updateTrain(Train train) {
        int a=trainMapper.updateTrain(train);
        return a>0;
    }

    @Override
    public boolean addTrain(Train train) {
       int a=trainMapper.addTrain(train);
       return a>0;
    }

    @Override
    public boolean delTrain(String id) {
        int a=trainMapper.delTrain(id);
        return a>0;
    }

    @Override
    public ReportDataBean barTrain(List<String> dates) {
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=trainMapper.barTrain(date);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public ReportDataBean lineTrain(List<String> dates) {
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=trainMapper.lineTrain(date);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public String employeeApply(List<Employee> employees,String trainId) {
        int n = trainMapper.employeeApply(employees,trainId);
        if (n>0){
            return "报名成功";
        }else {
            return "报名失败，请重试";
        }

    }
}
