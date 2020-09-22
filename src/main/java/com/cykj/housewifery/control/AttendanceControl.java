package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Attendance;
import com.cykj.housewifery.bean.CompanyService;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.AttendanceService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/attendance")
public class AttendanceControl {

    @Autowired
    AttendanceService attendanceService;

    @RequestMapping(value = "/clockList",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object clockList(String page,String limit,String companyId,String date) {
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = attendanceService.getClockCount(companyId,date);
        List<Attendance> attendances = attendanceService.getClockList(companyId,date,pageNum,limit);
        layuiJson.setData(attendances);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
        return gson.toJson(layuiJson);
    }
}
