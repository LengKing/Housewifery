package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Train;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface AdminTrainMapper {
    public Integer selectRecord(@Param("condition")Map<String, String> condition);

    public List<Train> getTrain(@Param("condition")Map<String, String> condition, @Param("curPage")Integer curPage, @Param("pageSize")Integer pageSize, Integer record);

    public int deleteTrain(int id);

    public int addTrain(Train train);

    public int updateTrain(@Param("train") Train train);
}
