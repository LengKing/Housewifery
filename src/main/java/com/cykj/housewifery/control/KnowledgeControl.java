package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Jobs;
import com.cykj.housewifery.bean.Knowledge;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.service.KnowledgeService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/knowledge")
public class KnowledgeControl {

    @Autowired
    private KnowledgeService knowledgeService;

    @RequestMapping(value = "/selKnowledge" ,produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object selKnowledge(String page,String limit){
        Integer pageNum = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        LayuiJson layuiJson = new LayuiJson();
        int count = knowledgeService.getKnowledgeCount();
        List<Knowledge> knowledges = knowledgeService.selKnowledge(pageNum,limit);
        layuiJson.setData(knowledges);
        layuiJson.setCode(0);
        layuiJson.setCount(count);
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        return gson.toJson(layuiJson);
    }

public Object findKnowledgeById(String id){
        Knowledge knowledge=knowledgeService.findKnowledgeById(id);
        return new Gson().toJson(knowledge);
}



}
