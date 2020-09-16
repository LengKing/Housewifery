package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Affiche;
import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.mapper.AdminAfficheMapper;
import com.cykj.housewifery.service.AdminAfficheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("adminAffiches")
public class AdminAfficheServiceImpl implements AdminAfficheService {
    @Autowired
    AdminAfficheMapper adminAfficheMapper;

    @Override
    public LayuiJson getAffiche(Map<String, String> condition, Integer curPage, Integer pageSize) {
        Integer record = adminAfficheMapper.selectRecord(condition);
        List<Affiche> affiche =  adminAfficheMapper.getAffiche(condition, curPage, pageSize, record);
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(affiche);
        layuiJson.setCode(0);
        layuiJson.setCount(record);
        return layuiJson;
    }
}
