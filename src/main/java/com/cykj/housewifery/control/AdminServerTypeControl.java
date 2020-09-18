package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Affiche;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.ServiceType;
import com.cykj.housewifery.bean.Train;
import com.cykj.housewifery.service.AdminServerTypeService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/adminType")
public class AdminServerTypeControl {
    @Autowired
    AdminServerTypeService adminServerTypeService;

    @RequestMapping("/getType")
    @ResponseBody
    public String getType(HttpServletRequest request) {
        String typeName = request.getParameter("typeName");
        String curPageStr = request.getParameter("page");
        String pageSizeStr = request.getParameter("limit");
        Integer pageSize = 5;
        Integer curPage = 1;
        Map<String, String> condition = new HashMap<>();
        if (null != typeName && !"".equalsIgnoreCase(typeName)) {
            condition.put("typeName", typeName);
        }
        if (null != curPageStr && !"".equalsIgnoreCase(curPageStr)) {
            curPage = Integer.parseInt(curPageStr);
            pageSize = Integer.parseInt(pageSizeStr);
            curPage = (curPage - 1) * pageSize;
        }

        LayuiJson layuiJson = adminServerTypeService.getType(condition, curPage, pageSize);
        return new Gson().toJson(layuiJson);
    }

    @RequestMapping(value = "/updatesType")
    @ResponseBody
    public String updatesType(HttpServletRequest request) {
        String id = request.getParameter("id");
        String typeName = request.getParameter("typeName");
        ServiceType serviceType = new ServiceType();
        serviceType.setId(Integer.parseInt(id));
        serviceType.setTypeName(typeName);
        int n = adminServerTypeService.updatesType(serviceType);
        if (n == 1) {
            return "修改成功";
        } else {
            return "修改失败";
        }
    }

    @RequestMapping(value = "/updateServers")
    @ResponseBody
    public String updateServers(HttpServletRequest request) {
        String id1 = request.getParameter("id1");
        String name = request.getParameter("name");
        ServiceType serviceType = new ServiceType();
        serviceType.setId1(Integer.parseInt(id1));
        serviceType.setName(name);
        int n = adminServerTypeService.updateServers(serviceType);
        if (n == 1) {
            return "修改成功";
        } else {
            return "修改失败";
        }
    }

    @RequestMapping(value = "/addType")
    @ResponseBody
    public String addType(HttpServletRequest request) {
        String typeName = request.getParameter("typeName");
        String pid = request.getParameter("pid");
        ServiceType serviceType = new ServiceType();
        serviceType.setTypeName(typeName);
        serviceType.setPid(Integer.parseInt(pid));
        int n = adminServerTypeService.addType(serviceType);
        if (n == 1) {
            return "添加成功";
        } else {
            return "添加失败";
        }
    }

    @RequestMapping(value = "/deleteType")
    @ResponseBody
    public String deleteType(HttpServletRequest request) {
        String id = request.getParameter("id");
        int n = adminServerTypeService.deleteType(Integer.parseInt(id));
        if (n == 1) {
            return "删除成功";
        } else {
            return "删除失败";
        }
    }

    @RequestMapping(value = "/deleteTypes")
    @ResponseBody
    public String deleteTypes(HttpServletRequest request) {
        String id1 = request.getParameter("id1");
        System.out.println("这是是"+id1);
        int n = adminServerTypeService.deleteTypes(Integer.parseInt(id1));
        if (n == 1) {
            return "删除成功";
        } else {
            return "删除失败";
        }
    }

}
