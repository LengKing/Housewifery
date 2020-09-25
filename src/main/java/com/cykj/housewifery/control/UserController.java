package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.bean.User;
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
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login" , produces = "text/plain;charset=utf-8")
    @ResponseBody
    public void AdminLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        response.setContentType("text/plain");
        User user = new User();
        user.setAccount(account);
        user.setPassword(password);
        User user1 = userService.login(user);
        if (null != user1) {
            request.getSession().setAttribute("user1", user1);
            response.getWriter().print("登录成功");
        } else {
            response.getWriter().print("你好！账号不正确");
        }


    }

    @RequestMapping(value = "/userAdd" , produces = "text/plain;charset=utf-8")
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

    @RequestMapping(value = "/userAddres" ,produces ="text/plain;charset=utf-8" )
    @ResponseBody
    public Object findAddress(String user, String page, String limit){
        Integer pageNum = (Integer.valueOf(page) - 1) * Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = userService.getAddressCount(user);
        List<User> users = userService.userAddress(user, pageNum, limit);
        layuiJson.setData(users);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);

    }
}


