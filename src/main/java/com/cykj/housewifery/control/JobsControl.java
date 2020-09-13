package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Jobs;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Train;
import com.cykj.housewifery.service.JobsService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/jobs")
public class JobsControl {

    @Autowired
    private JobsService jobsService;

    @RequestMapping(value = "/selJobs" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selJobs(String page,String limit){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = jobsService.getJobsCount();
        List<Jobs> jobs = jobsService.selJobs(pageNum,limit);
        layuiJson.setData(jobs);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/findJobsById" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findJobsById(String id){
        Jobs jobs=jobsService.findJobsById(id);
        return new Gson().toJson(jobs);
    }

    @RequestMapping(value = "/updateJobs" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object updateJobs(String id,String jobs,String detail){
        boolean flag=jobsService.updateJobs(id,jobs,detail);
        if (flag){
            return new Gson().toJson(1);
        }else {
            return new Gson().toJson(2);
        }

    }

    @RequestMapping(value = "/deleteJobs" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object deleteJobs(String id){
        boolean flag=jobsService.deleteJobs(id);
        if (flag){
            return new Gson().toJson("删除成功");
        }else {
            return new Gson().toJson("删除失败");
        }
    }

    @RequestMapping(value = "/addJobs" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object addJobs(String id,String jobs,String detail){
        boolean flag=jobsService.addJobs(id,jobs,detail);
        if (flag){
            return new Gson().toJson(1);
        }else {
            return new Gson().toJson(2);
        }

    }


}
