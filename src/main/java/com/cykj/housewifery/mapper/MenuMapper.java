package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface MenuMapper {
    List<Object> findHaveIDs(String jobs);
    List<Menu> findHaveMenu(List<Object> mids);
    List<Object> findAllID();
    int addMenus(@Param("jobs") String jobs, @Param("mid") int mid);
    int delMenus(@Param("jobs") String jobs, @Param("mid") int mid);
    List<Menu> findMenu(@Param("jobs") Integer jobs,@Param("pid") Integer id);
}
