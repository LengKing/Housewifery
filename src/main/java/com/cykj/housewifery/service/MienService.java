package com.cykj.housewifery.service;

import com.cykj.housewifery.bean.Mien;

import java.util.List;

public interface MienService {
    int getMienCount();
    List<Mien> selMien(Integer pageNum, String limit);
    Mien findMienById(String id);
    boolean updateMien(String id, String title, String type);
    boolean deleteMien(String id);
    boolean addMien(Mien mien);

}
