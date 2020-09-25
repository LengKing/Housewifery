package com.cykj.housewifery.control;


import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.User;
import com.cykj.housewifery.service.EvaluationService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/evaluation")
public class EvaluationController {
    //我的评价

    @Autowired
    private EvaluationService evaluationService;

    @ResponseBody
    @RequestMapping(value = "/selEvaluation" , produces = "text/plain;charset=utf-8")
    public Object selEvaluation(String page, String limit, HttpServletRequest request)  {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        User user=(User)request.getSession().getAttribute("user1");
        int count=evaluationService.getCountCompany(user.getAccount());
        List<Order> list = evaluationService.evaluation("100001",pageNum,limit);
        layuiJson.setData(list);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @ResponseBody
    @RequestMapping(value = "/delEvaluation" , produces = "text/plain;charset=utf-8")
    public Object delEvaluation(String id){
        boolean flag=evaluationService.delEvaluation(id);
        if (flag){
            return "删除成功";
        }else {
            return "删除失败";
        }

    }
    @ResponseBody
    @RequestMapping(value = "/findEvaluation" , produces = "text/plain;charset=utf-8")
    public Object findEvaluation(String id){
        String evaluation=evaluationService.findEvaluation(id);
        return evaluation;
    }

    @ResponseBody
    @RequestMapping(value = "/addEvaluation" , produces = "text/plain;charset=utf-8")
    public Object addEvaluation(String id,String comment){
        boolean flag=evaluationService.addEvaluation(id,comment);
        if (flag){
            return "提交成功";
        }else {
            return "添加失败";
        }
    }



}
