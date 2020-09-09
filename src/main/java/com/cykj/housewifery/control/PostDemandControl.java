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
    public String getDemand(Demand demand) throws IOException {
        postDemandService.getDemand(demand);
        return "true";
    }

}
