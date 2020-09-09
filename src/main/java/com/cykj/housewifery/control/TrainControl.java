package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Train;
import com.cykj.housewifery.service.TrainService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/train")
public class TrainControl {

    @Autowired
    private TrainService trainService;

    @RequestMapping(value = "/selTrain" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
public Object selTrain(String page,String limit){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = trainService.getTrainCount();
        List<Train> trains = trainService.selTrain(pageNum,limit);
        layuiJson.setData(trains);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
}

}
