package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Knowledge;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface KnowledgeMapper {
    int getKnowledgeCount();
    List<Knowledge> selKnowledge(@Param("pageNum") Integer pageNum, @Param("limit") int limit);
    Knowledge findKnowledgeById(@Param("id") String id);
    int updateKnowledge(@Param("id") String id, @Param("title") String title, @Param("type") String type);
    int deleteKnowledge(@Param("id") String id);
}
