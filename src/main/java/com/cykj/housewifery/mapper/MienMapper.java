package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Knowledge;
import com.cykj.housewifery.bean.Mien;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MienMapper {
    int getMienCount();
    List<Mien> selMien(@Param("pageNum") Integer pageNum, @Param("limit") int limit);
    Mien findMienById(@Param("id") String id);
    int updateMien(@Param("id") String id, @Param("title") String title, @Param("type") String type);
    int deleteMien(@Param("id") String id);
    int addMien(Mien mien);
}
