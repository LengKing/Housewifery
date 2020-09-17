package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Train;
import com.cykj.housewifery.mapper.AdminTrainMapper;
import com.cykj.housewifery.service.AdminTrainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("adminTrains")
public class AdminTrainServiceImpl implements AdminTrainService {

    @Autowired
    AdminTrainMapper adminTrainMapper;

    @Override
    public LayuiJson getTrain(Map<String, String> condition, Integer curPage, Integer pageSize) {
        Integer record = adminTrainMapper.selectRecord(condition);
        List<Train> train =  adminTrainMapper.getTrain(condition, curPage, pageSize, record);
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(train);
        layuiJson.setCode(0);
        layuiJson.setCount(record);
        return layuiJson;
    }

    @Override
    public int deleteTrain(int id) {
        int n = 0;
        n = adminTrainMapper.deleteTrain(id);
        return n;
    }

    @Override
    public int addTrain(Train train) {
        int n = 0;
        n = adminTrainMapper.addTrain(train);
        return n;
    }

    @Override
    public int updateTrain(Train train) {
        int n = 0;
        n = adminTrainMapper.updateTrain(train);
        return n;
    }
}
