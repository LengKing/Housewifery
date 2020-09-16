package com.cykj.housewifery.control;

import com.alibaba.fastjson.JSON;
import com.cykj.housewifery.bean.LayuiData;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
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
    @RequestMapping(value = "/OrderSel" , produces = "text/plain;charset=utf-8")
    public Object OrderSel(String company,String page,String limit)  {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count=moneyTbService.getCountCompany(company);
        List<Order> list = moneyTbService.selOrder(company,pageNum,limit);
        layuiJson.setData(list);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }




    }
