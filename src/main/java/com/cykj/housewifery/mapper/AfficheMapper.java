package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Affiche;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AfficheMapper {
    int barAffiche(String date);
    int lineAffiche(String date);

    List<Affiche> getAfficheList();
}
