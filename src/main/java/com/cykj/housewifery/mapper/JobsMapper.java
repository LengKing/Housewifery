package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Jobs;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface JobsMapper {

    List<Jobs> selJobs(@Param("pageNum") Integer pageNum, @Param("limit") Integer limit);
    int getJobsCount();
    Jobs findJobsById(String id);
    int updateJobs(@Param("id") String id, @Param("jobs") String jobs, @Param("detail") String detail);
    int deleteJobs(@Param("id") String id);
    int addJobs(@Param("id") String id, @Param("jobs") String jobs, @Param("detail") String detail);
}
