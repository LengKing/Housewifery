package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Jobs;
import com.cykj.housewifery.mapper.JobsMapper;
import com.cykj.housewifery.service.JobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("jobsService")
public class JobsServiceImpl implements JobsService {

    @Autowired
    private JobsMapper jobsMapper;

    @Override
    public List<Jobs> selJobs(Integer pageNum, String limit) {
        List<Jobs> jobs=jobsMapper.selJobs(pageNum,Integer.valueOf(limit));
        return jobs;
    }

    @Override
    public int getJobsCount() {
        int count=jobsMapper.getJobsCount();
        return count;
    }

    @Override
    public Jobs findJobsById(String id) {
        Jobs jobs=jobsMapper.findJobsById(id);
        return jobs;
    }

    @Override
    public boolean updateJobs(String id, String jobs, String detail) {
       int a=jobsMapper.updateJobs(id,jobs,detail);
       return a>0;
    }

    @Override
    public boolean deleteJobs(String id) {
        int a=jobsMapper.deleteJobs(id);
        return a>0;
    }

    @Override
    public boolean addJobs(String id, String jobs, String detail) {
        int a=jobsMapper.addJobs(id,jobs,detail);
        return a>0;
    }
}
