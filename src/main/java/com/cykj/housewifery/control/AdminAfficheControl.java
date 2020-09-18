package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Affiche;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Train;
import com.cykj.housewifery.service.AdminAfficheService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();//Gson时间格式自动转换
        if (null != title && !"".equalsIgnoreCase(title)) {
            condition.put("title", title);
        }
        if (null != curPageStr && !"".equalsIgnoreCase(curPageStr)) {
            curPage = Integer.parseInt(curPageStr);
            pageSize = Integer.parseInt(pageSizeStr);
            curPage = (curPage - 1) * pageSize;
        }

        LayuiJson layuiJson = adminAfficheService.getAffiche(condition, curPage, pageSize);
        return gson.toJson(layuiJson);
    }

    @RequestMapping(value = "/deleteAffiche")
    @ResponseBody
    public String deleteAffiche(HttpServletRequest request) {
        String id = request.getParameter("id");
        int n = adminAfficheService.deleteAffiche(Integer.parseInt(id));
        if (n == 1) {
            return "删除成功";
        } else {
            return "删除失败";
        }
    }

    @RequestMapping(value = "/addTAffiche")
    @ResponseBody
    public String addTAffiche(HttpServletRequest request) {
        String title = request.getParameter("title");
        String describes = request.getParameter("describes");
        Affiche affiche = new Affiche();
        affiche.setTitle(title);
        affiche.setDescribes(describes);
        int n = adminAfficheService.addTAffiche(affiche);
        if (n == 1) {
            return "发布成功";
        } else {
            return "发布失败";
        }
    }

    @RequestMapping(value = "/updateAffiche")
    @ResponseBody
    public String updateAffiche(HttpServletRequest request) throws ParseException {
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String describes = request.getParameter("describes");
        Affiche affiche = new Affiche();
        affiche.setId(Integer.parseInt(id));
        affiche.setTitle(title);
        affiche.setDescribes(describes);
        int n = adminAfficheService.updateAffiche(affiche);
        if (n == 1) {
            return "修改成功";
        } else {
            return "修改失败";
        }
    }
}
