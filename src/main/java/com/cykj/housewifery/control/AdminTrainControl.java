package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Train;
import com.cykj.housewifery.service.AdminTrainService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/adminTrain")
public class AdminTrainControl {

    @Autowired
    AdminTrainService adminTrainService;

    @RequestMapping("/getTrain")
    @ResponseBody
    public String getTrain(HttpServletRequest request) {
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
        LayuiJson layuiJson = adminTrainService.getTrain(condition, curPage, pageSize);
        return new Gson().toJson(layuiJson);
    }


    @RequestMapping(value = "/deleteTrain")
    @ResponseBody
    public String deleteTrain(HttpServletRequest request) {
        String id = request.getParameter("id");
        int n = adminTrainService.deleteTrain(Integer.parseInt(id));
        if (n == 1) {
            return "删除成功";
        } else {
            return "删除失败";
        }
    }


    @RequestMapping(value = "/addTrain")
    @ResponseBody
    public String addTrain(HttpServletRequest request) {
        String title = request.getParameter("title");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        String content = request.getParameter("content");
        String count = request.getParameter("count");
        String length = request.getParameter("length");
        Train train = new Train();
        train.setTitle(title);
        train.setStartDate(startDate);
        train.setEndDate(endDate);
        train.setStartTime(startTime);
        train.setEndTime(endTime);
        train.setContent(content);
        train.setCount(Integer.parseInt(count));
        train.setLength(length);
        int n = adminTrainService.addTrain(train);
        if (n == 1) {
            return "添加成功";
        } else {
            return "添加失败";
        }
    }


    @RequestMapping(value = "/updateTrain")
    @ResponseBody
    public String updateTrain(HttpServletRequest request) {
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        String content = request.getParameter("content");
        String count = request.getParameter("count");
        String length = request.getParameter("length");
        Train train = new Train();
        train.setId(Integer.parseInt(id));
        train.setTitle(title);
        train.setStartDate(startDate);
        train.setEndDate(endDate);
        train.setStartTime(startTime);
        train.setEndTime(endTime);
        train.setContent(content);
        train.setCount(Integer.parseInt(count));
        train.setLength(length);
        int n = adminTrainService.updateTrain(train);
        if (n == 1) {
            return "修改成功";
        } else {
            return "修改失败";
        }
    }
}
