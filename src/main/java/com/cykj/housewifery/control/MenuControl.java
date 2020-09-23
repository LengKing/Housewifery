package com.cykj.housewifery.control;

import com.cykj.housewifery.bean.Menu;
import com.cykj.housewifery.service.MenuService;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

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



    //动态菜单的获取
    @RequestMapping(value = "/findMenu", produces = "text/plain;charset=utf-8")

    public Object findMenu(HttpServletRequest request){
            String jobs=request.getParameter("jobs");
            Map<String, List<Menu>> menuMap = menuService.findMenu(Integer.valueOf(jobs));
            request.setAttribute("menuMap",menuMap);
        return "/testjsp/TestForView.jsp";              //返回一个jsp 菜单栏
    }

}
