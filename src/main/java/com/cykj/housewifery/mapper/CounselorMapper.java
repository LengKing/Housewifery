package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Counselor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CounselorMapper {

    int getCounselorCount();
    List<Counselor> selCounselor(@Param("pageNum") Integer pageNum,@Param("limit") Integer limit);

}
