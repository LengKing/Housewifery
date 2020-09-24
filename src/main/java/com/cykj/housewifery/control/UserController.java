package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.bean.User;
import com.cykj.housewifery.service.UserService;
import com.google.gson.Gson;
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
}


