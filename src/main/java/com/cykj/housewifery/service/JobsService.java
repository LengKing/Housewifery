package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Jobs;

import java.util.List;

public interface JobsService {
    List<Jobs> selJobs(Integer pageNum, String limit);
    int getJobsCount();
    Jobs findJobsById(String id);
    boolean updateJobs(String id, String jobs, String detail);
    boolean deleteJobs(String id);
    boolean addJobs(String id, String jobs, String detail);
}
