package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Company;
import com.cykj.housewifery.bean.CompanyAccountDetails;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.CompanyAccountService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/companyAccount")
public class CompanyAccountControl {

    @Autowired
    CompanyAccountService companyAccountService;

    @RequestMapping(value = "/accountMsg",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object accountMsg(String companyId) {
        Company company = companyAccountService.getAccountMsg(companyId);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(company);
    }

    @RequestMapping(value = "/setAccount",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object setAccount(String companyId,String account) {
        String result = companyAccountService.setAccount(companyId,account);
        return result;
    }

    @RequestMapping(value = "/withdrawal",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object withdrawal(String companyId,String money) {
        String result = companyAccountService.withdrawal(companyId,money);
        return result;
    }

    @RequestMapping(value = "/transfer",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object transfer(String companyId,String money) {
        String result = companyAccountService.transfer(companyId,money);
        return result;
    }

    @RequestMapping(value = "/topUp",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object topUp(String companyId,String money) {
        String result = companyAccountService.topUp(companyId,money);
        return result;
    }

    @RequestMapping(value = "/transactionRecords",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object transactionRecords(String page,String limit,String companyId) throws IOException {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = companyAccountService.getRecordsCount(companyId);
        List<CompanyAccountDetails> details = companyAccountService.getRecords(companyId,pageNum,limit);
        layuiJson.setData(details);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }


}
