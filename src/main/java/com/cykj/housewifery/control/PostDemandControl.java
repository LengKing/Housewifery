package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Demand;
import com.cykj.housewifery.service.PostDemandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.io.IOException;


@Controller
@RequestMapping("/postDemand")
public class PostDemandControl {
    @Autowired
    PostDemandService postDemandService;

    @RequestMapping(value = "/demand", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getDemand(Demand demand) throws IOException {

//        List<ServiceType> types = postDemandService.getServiceList(companyId,pageNum,limit);
//        layuiJson.setData(types);
//        layuiJson.setCode(0);
//        layuiJson.setCount(count);
//        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
//        return gson.toJson(layuiJson);
        return false;
    }

}
