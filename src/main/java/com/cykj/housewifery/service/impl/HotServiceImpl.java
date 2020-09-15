package com.cykj.housewifery.service.impl;


import com.cykj.housewifery.bean.Jobs;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.mapper.HotServiceMapper;
import com.cykj.housewifery.service.HotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service("hots")
public class HotServiceImpl implements HotService {
    @Autowired
    HotServiceMapper hotServiceMapper;


    @Override
    public LayuiJson getHot() {
        List <Order> orders =  hotServiceMapper.getHot();
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(orders);
        layuiJson.setCode(0);
        return layuiJson;
    }
}
