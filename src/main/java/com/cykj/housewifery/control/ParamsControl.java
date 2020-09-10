package com.cykj.housewifery.control;

import com.cykj.housewifery.service.ParamsService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/params")
public class ParamsControl {

    @Autowired
    private ParamsService paramsService;

    @RequestMapping(value = "/findParams" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findParams(String type){
        List<Object> params=paramsService.findParams(type);
        return new Gson().toJson(params);
    }

    @RequestMapping(value = "/findTime" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object findTime(){
        List<Object> times=paramsService.findTime();
        return new Gson().toJson(times);
    }

}
