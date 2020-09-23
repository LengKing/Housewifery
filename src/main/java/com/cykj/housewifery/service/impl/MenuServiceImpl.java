package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Menu;
import com.cykj.housewifery.mapper.MenuMapper;
import com.cykj.housewifery.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("menuService")
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;


    @Override
    public List<Menu> findHaveMenu(String jobs) {
        List<Object> mids = menuMapper.findHaveIDs(jobs);
        List<Menu> menus = new ArrayList<>();
        if (mids.size() > 0) {
            menus = menuMapper.findHaveMenu(mids);
        }
        return menus;
    }

    @Override
    public List<Menu> getNoneMenu(String jobs) {
        List<Object> haveMids = menuMapper.findHaveIDs(jobs);
        List<Object> allMids = menuMapper.findAllID();
        allMids.removeAll(haveMids);
        List<Menu> menus = menuMapper.findHaveMenu(allMids);
        return menus;
    }

    @Override
    public boolean addMenus(String jobs, List<String> menus) {
        int a = 0;
        for (String mid : menus) {
            a = menuMapper.addMenus(jobs, Integer.valueOf(mid));
        }
        return a > 0;
    }

    @Override
    public boolean delMenus(String jobs, List<String> menus) {
        int a = 0;
        for (String mid : menus) {
            a = menuMapper.delMenus(jobs, Integer.valueOf(mid));
        }
        return a > 0;
    }

    @Override
    public Map<String, List<Menu>> findMenu(Integer jobs) {
        Map<BigDecimal, List<BigDecimal>> menuIDS = new HashMap<>();
        Map<String, List<Menu>> menuMap = new HashMap<>();
        List<Menu> menuList =menuMapper.findMenu(jobs, 0);
        System.out.println(menuList+"125452");
        for (Menu menu : menuList) {
            List<Menu> menuSons =menuMapper.findMenu(jobs, menu.getId());
            menuMap.put(menu.getName(), menuSons);//加子菜单的集合
        }
        return menuMap;
    }
}