package com.cykj.housewifery.control;

import com.alibaba.fastjson.JSON;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.User;
import com.cykj.housewifery.service.MoneyTbService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;


@Controller
@RequestMapping("/Order")
public class OrderSelController {
//我的订单

    @Autowired
    private MoneyTbService moneyTbService;

    @ResponseBody
    @RequestMapping(value = "/selOrder" , produces = "text/plain;charset=utf-8")
    public Object selOrder(String company,String page,String limit,HttpServletRequest request)  {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        User user=(User)request.getSession().getAttribute("user1");
        int count=moneyTbService.getCountCompany(user.getAccount());
        List<Order> list = moneyTbService.selOrder(user.getAccount(),pageNum,limit);
        layuiJson.setData(list);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @ResponseBody
    @RequestMapping(value = "/overOrder" , produces = "text/plain;charset=utf-8")
    public Object overOrder(String id){
        boolean flag=moneyTbService.overOrder(id);
        if (flag){
            return "确认完成";
        }else{
            return "确认失败";
        }
    }
    @ResponseBody
    @RequestMapping(value = "/addAfter" , produces = "text/plain;charset=utf-8")
    public Object addAfter(String id,String why){
        boolean flag=moneyTbService.addAfter(id,why);
        if (flag){
            return "提交完成";
        }else{
            return "提交失败";
        }

    }



    }
