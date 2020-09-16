package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.*;
import com.cykj.housewifery.service.OrderService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderControl {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/selOrder", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selOrder(String company, String page, String limit) {
        Integer pageNum = (Integer.valueOf(page) - 1) * Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = orderService.getOrderCount(company);
        List<Order> orders = orderService.selOrder(company, pageNum, limit);
        layuiJson.setData(orders);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/findOrderById", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findOrderById(String id) {
        Order order = orderService.findOrderById(id);
        return new Gson().toJson(order);
    }

    @RequestMapping(value = "/getDemands", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getDemands(String page, String limit) throws IOException {
        Integer pageNum = (Integer.valueOf(page) - 1) * Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = orderService.getDemandsCount();
        List<Demand> demands = orderService.getDemands(pageNum, limit);
        layuiJson.setData(demands);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }


    @RequestMapping(value = "/grabSingle", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String grabSingle(String id, String companyId) {
        if (!orderService.grabSingle(id)) {
            return "抢单失败";
        }
        Object o = orderService.createOrder(companyId,id);
        return "抢单成功,请前往订单查看";
    }

    @RequestMapping(value = "/companyOrder",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object companyOrder(String page,String limit,String companyId,String type) throws IOException {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = orderService.getOrderCount(companyId,type);
        List<Order> orders = orderService.companyOrder(pageNum,limit,companyId,type);
        layuiJson.setData(orders);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/allOrderState", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object allOrderState() {
        List<Param> state = orderService.allOrderState();
        return new Gson().toJson(state);
    }

    @RequestMapping(value = "/orderDetails", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object orderDetails(String account,String number) {
        HashMap<String,Object> map = orderService.orderDetails(account,number);
        return new Gson().toJson(map);
    }

    @RequestMapping(value = "/barOrder",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object barOrder(String startDate,String endDate,String company){
        ReportDataBean dataBeans=orderService.barOrder(startDate,endDate,company);
        System.out.println(new Gson().toJson(dataBeans));
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/lineOrder",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object lineOrder(String startDate,String endDate,String company){
        ReportDataBean dataBeans=orderService.lineOrder(startDate,endDate,company);
        System.out.println(new Gson().toJson(dataBeans));
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/orderTotalByCompany",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object orderTotalByCompany(String companyId,String condition) {
        ReportDataBean reportDataBean = orderService.orderTotalByCompany(companyId,condition);
        return new Gson().toJson(reportDataBean);
    }

}
