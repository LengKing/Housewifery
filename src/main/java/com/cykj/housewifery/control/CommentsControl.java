package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.AfterSales;
import com.cykj.housewifery.bean.Comments;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.CommentsService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/comments")
public class CommentsControl {

    @Autowired
    CommentsService commentsService;

    @RequestMapping(value = "/getCompanyComments",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getCompanyComments(String page,String limit,String companyId,String startDate,String endDate){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = commentsService.getCompanyCommentsCount(companyId,startDate,endDate);
        List<Comments> comments = commentsService.getCompanyComments(companyId,pageNum,limit,startDate,endDate);
        layuiJson.setData(comments);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/getEmployeeComments",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getEmployeeComments(String page,String limit,String number){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = commentsService.getEmployeeCommentsCount(number);
        List<Comments> comments = commentsService.getEmployeeComments(number,pageNum,limit);
        layuiJson.setData(comments);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }
}
