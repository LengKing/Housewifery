package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Train;

import java.util.List;

public interface TrainService {
    int getTrainCount();
    List<Train> selTrain(Integer pageNum, String limit);
    Train findTrainById(String id);
    boolean updateTrain(Train train);
    boolean addTrain(Train train);
    boolean delTrain(String id);
}
