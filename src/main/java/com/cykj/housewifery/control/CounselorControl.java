package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Counselor;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Train;
import com.cykj.housewifery.service.CounselorService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/counselor")
public class CounselorControl {

    @Autowired
    private CounselorService counselorService;

    @RequestMapping(value = "/selCounselor" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selCounselor(String page,String limit){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = counselorService.getCounselorCount();
        List<Counselor> counselors = counselorService.selCounselor(pageNum,limit);
        layuiJson.setData(counselors);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }
}
