package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Knowledge;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface KnowledgeMapper {
    int getKnowledgeCount();
    List<Knowledge> selKnowledge(@Param("pageNum") Integer pageNum, @Param("limit") String limit);
    Knowledge findKnowledgeById(@Param("id") String id);

}
