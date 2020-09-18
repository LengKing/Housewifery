package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Affiche;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceArea;
import com.cykj.housewifery.service.AdminAreacService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/adminAreac")
public class AdminAreacControl {
    @Autowired
    AdminAreacService adminAreacService;

    @RequestMapping("/getAreac")
    @ResponseBody
    public String getAreac(HttpServletRequest request) {
        String area = request.getParameter("area");
        String curPageStr = request.getParameter("page");
        String pageSizeStr = request.getParameter("limit");
        Integer pageSize = 5;
        Integer curPage = 1;
        Map<String, String> condition = new HashMap<>();
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();//Gson时间格式自动转换
        if (null != area && !"".equalsIgnoreCase(area)) {
            condition.put("area", area);
        }
        if (null != curPageStr && !"".equalsIgnoreCase(curPageStr)) {
            curPage = Integer.parseInt(curPageStr);
            pageSize = Integer.parseInt(pageSizeStr);
            curPage = (curPage - 1) * pageSize;
        }

        LayuiJson layuiJson = adminAreacService.getAreac(condition, curPage, pageSize);
        return gson.toJson(layuiJson);
    }


    @RequestMapping(value = "/addareac")
    @ResponseBody
    public String addareac(HttpServletRequest request) {
        String area = request.getParameter("area");
        ServiceArea serviceArea = new ServiceArea();
        serviceArea.setArea(area);
        int n = adminAreacService.addareac(serviceArea);
        if (n == 1) {
            return "添加成功";
        } else {
            return "添加失败";
        }
    }



    @RequestMapping(value = "/deleteAreac")
    @ResponseBody
    public String deleteAreac(HttpServletRequest request) {
        String id = request.getParameter("id");
        int n = adminAreacService.deleteAreac(Integer.parseInt(id));
        if (n == 1) {
            return "删除成功";
        } else {
            return "删除失败";
        }
    }


}
