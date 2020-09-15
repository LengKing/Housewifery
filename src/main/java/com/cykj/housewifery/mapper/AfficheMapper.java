package com.cykj.housewifery.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AfficheMapper {
    int barAffiche(String date);
    int lineAffiche(String date);

}
