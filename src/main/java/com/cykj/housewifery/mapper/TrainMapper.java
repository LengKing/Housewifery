package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Employee;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Train;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TrainMapper {

    int getTrainCount();
    List<Train> selTrain(LayuiJson layuiJson);
    Train findTrainById(String id);
    int updateTrain(Train train);
    int addTrain(Train train);
    int delTrain(String id);
    int barTrain(@Param("date") String date);
    int lineTrain(@Param("date") String date);

    int employeeApply(@Param("list") List<Employee> employees,@Param("trainId") String trainId);
}
