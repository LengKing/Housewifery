package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Train;

import java.util.Map;

public interface AdminTrainService {
    public LayuiJson getTrain(Map<String, String> condition, Integer curPage, Integer pageSize);

    int deleteTrain(int id);

    int addTrain(Train train);

    int updateTrain(Train train);
}
