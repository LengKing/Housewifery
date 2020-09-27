package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.User;
import com.cykj.housewifery.service.AdminManageService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/adminManage")
public class AdminManageControl {

    @Autowired
    AdminManageService adminManageService;

    @RequestMapping("/getManage")
    @ResponseBody
    public String getManage(HttpServletRequest request) {
        String name = request.getParameter("name");
        String curPageStr = request.getParameter("page");
        String pageSizeStr = request.getParameter("limit");
        Integer pageSize = 5;
        Integer curPage = 1;
        Map<String, String> condition = new HashMap<>();
        if (null != name && !"".equalsIgnoreCase(name)) {
            condition.put("name", name);
        }
        if (null != curPageStr && !"".equalsIgnoreCase(curPageStr)) {
            curPage = Integer.parseInt(curPageStr);
            pageSize = Integer.parseInt(pageSizeStr);
            curPage = (curPage - 1) * pageSize;
        }
        LayuiJson layuiJson = adminManageService.getManage(condition, curPage, pageSize);
        return new Gson().toJson(layuiJson);
    }


    //禁用、启用
    @RequestMapping(value = "/updateState")
    @ResponseBody
    public String updateState(HttpServletRequest request) {
        String account = request.getParameter("account");
        String userState = request.getParameter("userState");
        User user = new User();
        user.setAccount(account);
        user.setUserState(Integer.parseInt(userState));
        int n = adminManageService.updateState(user);
        if (n == 1) {
            return "操作成功";
        } else {
            return "操作失败";
        }

    }


    @RequestMapping("/getNeed")
    @ResponseBody
    public String getNeed(HttpServletRequest request) {
        String name = request.getParameter("name");
        String curPageStr = request.getParameter("page");
        String pageSizeStr = request.getParameter("limit");
        Integer pageSize = 5;
        Integer curPage = 1;
        Map<String, String> condition = new HashMap<>();
        if (null != name && !"".equalsIgnoreCase(name)) {
            condition.put("name", name);
        }
        if (null != curPageStr && !"".equalsIgnoreCase(curPageStr)) {
            curPage = Integer.parseInt(curPageStr);
            pageSize = Integer.parseInt(pageSizeStr);
            curPage = (curPage - 1) * pageSize;
        }
        LayuiJson layuiJson = adminManageService.getNeed(condition, curPage, pageSize);
        return new Gson().toJson(layuiJson);
    }


//    @RequestMapping("/pays")
//    @ResponseBody
//    public String pays(HttpServletRequest request) {
//        String type = request.getParameter("WIDsubject");
//        String cost = request.getParameter("WIDtotal_amount");
//        String typeName = request.getParameter("WIDsubject");
//        String count = request.getParameter("count");
//        String orderTime = request.getParameter("orderTime");
//        String orderState = request.getParameter("orderState");
//        String payState = request.getParameter("payState");
//        String evaluationState = request.getParameter("evaluationState");
//        String user = request.getParameter("userid");
//        Order order = new Order();
//        order.setType(type);
//        order.setCost(new BigDecimal(cost));
//        order.setTypeName(typeName);
//        order.setCount(count);
//        order.setOrderTime(orderTime);
//        order.setOrderState(orderState);
//        order.setPayState(payState);
//        order.setEvaluationState(Integer.parseInt(evaluationState));
//        order.setUser(user);
//        int n = adminManageService.pays(order);
//        if (n == 1) {
//            return "添加成功";
//        } else {
//            return "添加失败";
//        }
//    }

}
