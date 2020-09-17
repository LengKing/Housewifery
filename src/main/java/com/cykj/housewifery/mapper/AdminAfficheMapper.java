package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Affiche;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface AdminAfficheMapper {
    public Integer selectRecord(@Param("condition") Map<String, String> condition);

    public List<Affiche> getAffiche(@Param("condition") Map<String, String> condition, @Param("curPage") Integer curPage, @Param("pageSize") Integer pageSize, Integer record);

    public int deleteAffiche(int id);

    public int addTAffiche(@Param("affiche") Affiche affiche);

    public int updateAffiche(@Param("affiche")Affiche affiche);
}
