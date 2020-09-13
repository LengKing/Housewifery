package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Knowledge;
import com.cykj.housewifery.mapper.KnowledgeMapper;
import com.cykj.housewifery.service.KnowledgeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("knowledgeService")
public class KnowledgeServiceImpl implements KnowledgeService {

    @Autowired
    private KnowledgeMapper knowledgeMapper;


    @Override
    public int getKnowledgeCount() {
       int count=knowledgeMapper.getKnowledgeCount();
       return count;
    }

    @Override
    public List<Knowledge> selKnowledge(Integer pageNum, String limit) {
      List<Knowledge> knowledges=knowledgeMapper.selKnowledge(pageNum,Integer.valueOf(limit));
      return knowledges;
    }

    @Override
    public Knowledge findKnowledgeById(String id) {
        Knowledge knowledge=knowledgeMapper.findKnowledgeById(id);
        return knowledge;
    }

    @Override
    public boolean updateKnowledge(String id, String title, String type) {
        int a=knowledgeMapper.updateKnowledge(id,title,type);
        return a>0;
    }

    @Override
    public boolean deleteKnowledge(String id) {
        int a=knowledgeMapper.deleteKnowledge(id);
        return a>0;
    }
}
