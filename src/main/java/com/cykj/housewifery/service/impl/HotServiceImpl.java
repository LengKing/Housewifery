package com.cykj.housewifery.service.impl;


import com.cykj.housewifery.bean.Jobs;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.mapper.HotServiceMapper;
import com.cykj.housewifery.service.HotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Map;

@Service("hots")
public class HotServiceImpl implements HotService {
    @Autowired
    HotServiceMapper hotServiceMapper;


    @Override
    public LayuiJson getHot(Map<String, String> condition, Integer curPage, Integer pageSize) {
        Integer record = hotServiceMapper.selectRecord(condition);
        List <Order> orders =  hotServiceMapper.getHot(condition, curPage, pageSize, record);
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(orders);
        layuiJson.setCode(0);
        layuiJson.setCount(record);
        return layuiJson;
    }

}
