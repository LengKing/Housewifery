package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.CompanyManageService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/companyManage")
public class CompanyManageControl {

    @Autowired
    CompanyManageService companyManageService;

    @RequestMapping("/getCompany")
    @ResponseBody
    public String getCompany(HttpServletRequest request){
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
        LayuiJson layuiJson = companyManageService.getCompany(condition,curPage,pageSize);
        return new Gson().toJson(layuiJson);
    }
}
