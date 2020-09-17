package com.cykj.housewifery.control;


import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.service.EvaluationService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/Evaluation")
public class EvaluationController {
    //我的评价

    @Autowired
    private EvaluationService evaluationService;

    @ResponseBody
    @RequestMapping(value = "/evaluation" , produces = "text/plain;charset=utf-8")
    public Object OrderSel(String company,String page,Integer limit)  {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count=evaluationService.getCountCompany(company);
        List<Order> list = evaluationService.evaluation(pageNum,limit);
        layuiJson.setData(list);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

        return gson.toJson(layuiJson);
    }





}
