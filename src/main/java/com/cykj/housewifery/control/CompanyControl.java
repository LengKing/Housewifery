package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Admin;
import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.MapBean;
import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.service.CompanyService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/company")
public class CompanyControl {

    @Autowired
    private CompanyService companyService;

    @RequestMapping(value = "/barCompany",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object barCompany(String startDate,String endDate){
        ReportDataBean dataBeans=companyService.totalCompany(startDate,endDate);
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/lineCompany",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object lineCompany(String startDate,String endDate){
        ReportDataBean dataBeans=companyService.lineCompany(startDate,endDate);
        return new Gson().toJson(dataBeans);
    }

    @RequestMapping(value = "/companyMap",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object companyMap(){
        List<MapBean> data=companyService.companyMap();
        return new Gson().toJson(data);
    }

    //家政公司的
    @RequestMapping(value = "/login")
    @ResponseBody
    public Object AdminLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        Company company = new Company();
        company.setId(Integer.valueOf(id));
        company.setPassword(password);
        Company company1=companyService.loginCompany(company);
        if (null != company1) {
            request.getSession().setAttribute("company", company1);
            return "1";
        } else {
            return "2";
        }
    }

    //平台的登录
    @RequestMapping(value = "/PTlogin")
    @ResponseBody
    public Object PTLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Admin admin = new Admin();
        admin.setAccount(account);
        admin.setPassword(password);
        Admin admin1 = companyService.LoginPT(admin);
        if (null != admin1) {
            request.getSession().setAttribute("admin", admin1);
            return new Gson().toJson(1);
        } else {
            return new Gson().toJson(2);
        }
    }
}
