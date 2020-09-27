package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.LayuiJson;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.User;
import com.cykj.housewifery.mapper.AdminManageMapper;
import com.cykj.housewifery.service.AdminManageService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("adminManages")
public class AdminManageServiceImpl implements AdminManageService {

    @Autowired
    AdminManageMapper adminManageMapper;

    @Override
    public LayuiJson getManage(Map<String, String> condition, Integer curPage, Integer pageSize) {
        Integer record = adminManageMapper.selectRecord(condition);
        List<User> users =  adminManageMapper.getManage(condition, curPage, pageSize, record);
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(users);
        layuiJson.setCode(0);
        layuiJson.setCount(record);
        return layuiJson;
    }

    @Override
    public int updateState(User user) {
        int n = 0;
        n = adminManageMapper.updateState(user);
        return n;
    }

    @Override
    public LayuiJson getNeed(Map<String, String> condition, Integer curPage, Integer pageSize) {
        Integer record = adminManageMapper.selectRecords(condition);
        List<User> users =  adminManageMapper.getNeed(condition, curPage, pageSize, record);
        LayuiJson layuiJson= new LayuiJson();
        layuiJson.setData(users);
        layuiJson.setCode(0);
        layuiJson.setCount(record);
        return layuiJson;
    }

//    @Override
//    public int pays(Order order) {
//        int n = 0;
//        n = adminManageMapper.pays(order);
//        return n;
//    }
}
