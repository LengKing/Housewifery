package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Menu;
import com.cykj.housewifery.service.MenuService;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/menu")
public class MenuControl {

    @Autowired
    private MenuService menuService;

    //获取该角色已分配的菜单
    @RequestMapping(value = "/getHaveMenu", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getHaveMenu(String jobs){
        List<Menu> haveMenu=menuService.findHaveMenu(jobs);
       return new Gson().toJson(haveMenu);
    }

    //获取该角色未分配的菜单
    @RequestMapping(value = "/getNoneMenu", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object getNoneMenu(String jobs){
        List<Menu> noneMenu=menuService.getNoneMenu(jobs);
        return new Gson().toJson(noneMenu);
    }

    //权限管理增加菜单
    @RequestMapping(value = "/addMenus", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object addMenus(String jobs,String menus){
        Gson gson=new Gson();
        List<String> menu = gson.fromJson(menus, new TypeToken<List<String>>(){}.getType());
        boolean flag=menuService.addMenus(jobs,menu);
        if (flag){
           return new Gson().toJson(1);
        }else{
           return new Gson().toJson(2);
        }
    }

    //权限管理删除菜单
    @RequestMapping(value = "/delMenus", produces = "text/plain;charset=utf-8")
    @ResponseBody
    public Object delMenus(String jobs,String menus){
        Gson gson=new Gson();
        List<String> menu = gson.fromJson(menus, new TypeToken<List<String>>(){}.getType());
        boolean flag=menuService.delMenus(jobs,menu);
        if (flag){
           return new Gson().toJson(1);
        }else{
           return new Gson().toJson(2);
        }
    }

}
