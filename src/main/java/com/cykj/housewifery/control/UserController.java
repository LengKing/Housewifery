package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.*;
import com.cykj.housewifery.service.UserService;
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
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login")
    @ResponseBody
    public void AdminLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        User user = new User();
        user.setAccount(account);
        user.setPassword(password);
        User user1 = userService.login(user);
        if (user1 != null) {
            response.getWriter().print("0");
            request.getSession().setAttribute("user1", user1);
        } else {
            response.getWriter().print("1");
        }

    }

    @RequestMapping(value = "/userAdd")
    //用户的增加
    public void addAdmaina(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        User user = new User();

        user.setAccount(account);
        user.setAddress(address);
        user.setGender(gender);
        user.setPassword(password);
        user.setPhone(phone);
        boolean a = userService.add(user);
        if (a) {
            if (null != user) {
                response.getWriter().write("注册成功");
            }
        }

    }

    @RequestMapping(value = "/barUser", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object barUser(String startDate, String endDate) {
        ReportDataBean dataBeans = userService.barUser(startDate, endDate);
        System.out.println(new Gson().toJson(dataBeans));
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/lineUser", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object lineUser(String startDate, String endDate) {
        ReportDataBean dataBeans = userService.lineUser(startDate, endDate);
        System.out.println(new Gson().toJson(dataBeans));
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/userRecords",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object userRecords (String page,String limit,String account) throws IOException {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = userService.getRecordsCount(account);
        List<Consump> consumps = userService.getRecordsList(account,pageNum,limit);
        layuiJson.setData(consumps);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
        return gson.toJson(layuiJson);
    }
    @RequestMapping(value = "/userAccountMsg", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object userAccountMsg(String account) {
        User user = userService.findUserByAccount(account);
        return new Gson().toJson(user);
    }
    @RequestMapping(value = "/setBankCard", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object setBankCard(String account,String bankCard) {
        String result = userService.setBankCard(account,bankCard);
        return result;
    }
    @RequestMapping(value = "/transfer", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object transfer(String account,String money) {
        String result = userService.transfer(account,money);
        return result;
    }
    @RequestMapping(value = "/topUp", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object topUp(String account,String money) {
        String result = userService.topUp(account,money);
        return result;
    }
    @RequestMapping(value = "/updateUserMsg", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object updateUserMsg(String account,String money) {
        return "保存成功";
    }
    @RequestMapping(value = "/findUserByAccount", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findUserByAccount(String account) {
        User user = userService.findUserByAccount(account);
        return new Gson().toJson(user);
    }

    @RequestMapping(value = "/selAddress", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selAddress(HttpServletRequest request,String page,String limit){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        User user=(User)request.getSession().getAttribute("user1");
        int count=userService.getAddCount(user.getAccount());
        List<Address> list = userService.getAddress(user.getAccount(),pageNum,limit);
        layuiJson.setData(list);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);

    }
    @RequestMapping(value = "/updAddress", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object updAddress(String id,String address){
        boolean flag=userService.updAddress(Integer.valueOf(id),address);
        if (flag){
            return "修改成功";
        }else{
            return "修改失败";
        }
    }

    @RequestMapping(value = "/delAddress", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object delAddress(String id){
        boolean flag=userService.delAddress(Integer.valueOf(id));
        if (flag){
            return "删除成功";
        }else{
            return "删除失败";
        }
    }

    @RequestMapping(value = "/addAddress", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object addAddress(String address,HttpServletRequest request){
        User user=(User) request.getSession().getAttribute("user1");
        boolean flag=userService.addAddress(address,user.getAccount());
        if (flag){
            return "添加成功";
        }else{
            return "添加失败";
        }
    }
}


