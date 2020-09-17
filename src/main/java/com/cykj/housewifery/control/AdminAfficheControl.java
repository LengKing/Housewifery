package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.AdminAfficheService;
import com.cykj.housewifery.service.AdminManageService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/adminAffiche")
public class AdminAfficheControl {
    @Autowired
    AdminAfficheService adminAfficheService;

    @RequestMapping("/getAffiche")
    @ResponseBody
    public String getAffiche(HttpServletRequest request) {
        String title = request.getParameter("title");
        String curPageStr = request.getParameter("page");
        String pageSizeStr = request.getParameter("limit");
        Integer pageSize = 5;
        Integer curPage = 1;
        Map<String, String> condition = new HashMap<>();
        if (null != title && !"".equalsIgnoreCase(title)) {
            condition.put("title", title);
        }
        if (null != curPageStr && !"".equalsIgnoreCase(curPageStr)) {
            curPage = Integer.parseInt(curPageStr);
            pageSize = Integer.parseInt(pageSizeStr);
            curPage = (curPage - 1) * pageSize;
        }
        LayuiJson layuiJson = adminAfficheService.getAffiche(condition, curPage, pageSize);
        return new Gson().toJson(layuiJson);
    }
}
