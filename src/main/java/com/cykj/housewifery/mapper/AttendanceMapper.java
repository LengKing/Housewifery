package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Attendance;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

@Mapper
public interface AttendanceMapper {

    int getClockCount(@Param("companyId") String companyId,@Param("date") String date);

    List<Attendance> getClockList(@Param("companyId") String companyId,@Param("date") String date,@Param("pageNum") Integer pageNum,@Param("limit") Integer limit);

    void employeeClock(@Param("number") String number,@Param("date") Date date);
}
