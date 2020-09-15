package com.cykj.housewifery.control;

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
import javax.xml.crypto.Data;
import java.io.IOException;
import java.util.HashMap;

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
        User admin = new User();
        admin.setAccount(account);
        admin.setPassword(password);

        if (null != admin) {
            request.getSession().setAttribute("admin", admin);
            response.getWriter().print("success");
            System.out.println("登陆成功！");
        } else {
            response.getWriter().print("你好 账号不正确");
        }


    }

    @RequestMapping(value = "/userAdd")
    //管理员的增加
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
                request.getSession().setAttribute("user", user);
                response.getWriter().write("success");
                System.out.println("注册成功！");
            }
        }

    }

    @RequestMapping(value = "/findUserByAccount")
    @ResponseBody
    public Object findUserByAccount(String account) throws IOException, ServletException {
        User user = userService.findUserByAccount(account);
        return new Gson().toJson(user);
    }
}
