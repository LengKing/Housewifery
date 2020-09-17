package com.cykj.housewifery.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/validate")
//@WebServlet
public class ValidateCodeServlet extends HttpServlet {
    @RequestMapping("/date")
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.前台的验证码
       String code= request.getParameter("code");

       //2
      String _code=(String)request.getSession().getAttribute("_code");

      if (_code.equals(code)){
          response.getWriter().print("success");
      }else {
          response.getWriter().print("fail");
      }
    }


}
