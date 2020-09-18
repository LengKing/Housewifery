package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Mien;
import com.cykj.housewifery.mapper.MienMapper;
import com.cykj.housewifery.service.MienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("mienService")
public class MienServiceImpl implements MienService {

    @Autowired
    private MienMapper mienMapper;


    @Override
    public int getMienCount() {
       int count=mienMapper.getMienCount();
       return count;
    }

    @Override
    public List<Mien> selMien(Integer pageNum, String limit) {
      List<Mien> miens=mienMapper.selMien(pageNum,Integer.valueOf(limit));
      return miens;
    }

    @Override
    public Mien findMienById(String id) {
        Mien mien=mienMapper.findMienById(id);
        return mien;
    }

    @Override
    public boolean updateMien(String id, String title, String type) {
        int a=mienMapper.updateMien(id,title,type);
        return a>0;
    }

    @Override
    public boolean deleteMien(String id) {
        int a=mienMapper.deleteMien(id);
        return a>0;
    }

    @Override
    public boolean addMien(Mien mien) {
        int a=mienMapper.addMien(mien);
        return a>0;
    }
}
