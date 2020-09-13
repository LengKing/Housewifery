package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Knowledge;

import java.util.List;

public interface KnowledgeService {
    int getKnowledgeCount();
    List<Knowledge> selKnowledge(Integer pageNum, String limit);
    Knowledge findKnowledgeById(String id);
    boolean updateKnowledge(String id, String title, String type);
    boolean deleteKnowledge(String id);
}
