package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Menu;

import java.util.List;

public interface MenuService {
    List<Menu> findHaveMenu(String jobs);
    List<Menu> getNoneMenu(String jobs);
    boolean addMenus(String jobs, List<String> menus);
    boolean delMenus(String jobs, List<String> menus);
}
