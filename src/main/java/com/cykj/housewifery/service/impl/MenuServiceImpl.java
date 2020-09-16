package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Menu;
import com.cykj.housewifery.mapper.MenuMapper;
import com.cykj.housewifery.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("menuService")
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;


    @Override
    public List<Menu> findHaveMenu(String jobs) {
        List<Object> mids=menuMapper.findHaveIDs(jobs);
        List<Menu> menus=new ArrayList<>();
         if (mids.size()>0){
             menus=menuMapper.findHaveMenu(mids);
        }
        return menus;
    }

    @Override
    public List<Menu> getNoneMenu(String jobs) {
        List<Object> haveMids=menuMapper.findHaveIDs(jobs);
        List<Object> allMids=menuMapper.findAllID();
        allMids.removeAll(haveMids);
        List<Menu> menus=menuMapper.findHaveMenu(allMids);
        return menus;
    }

    @Override
    public boolean addMenus(String jobs, List<String> menus) {
        int a=0;
        for (String mid:menus){
            a= menuMapper.addMenus(jobs,Integer.valueOf(mid));
        }
        return a>0;
    }

    @Override
    public boolean delMenus(String jobs, List<String> menus) {
        int a=0;
        for (String mid:menus){
            a=menuMapper.delMenus(jobs,Integer.valueOf(mid));
        }
        return a>0;
    }
}
