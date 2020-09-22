package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.Comments;
import com.cykj.housewifery.mapper.CommentsMapper;
import com.cykj.housewifery.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commentsService")
public class CommentsServiceImpl implements CommentsService {

    @Autowired
    CommentsMapper commentsMapper;

    @Override
    public int getCompanyCommentsCount(String companyId, String startDate, String endDate) {
        int count = commentsMapper.getCompanyCommentsCount( companyId, startDate, endDate);
        return count;
    }

    @Override
    public List<Comments> getCompanyComments(String companyId, Integer pageNum, String limit, String startDate, String endDate) {
        List<Comments> comments = commentsMapper.getCompanyComments( companyId, pageNum, Integer.valueOf(limit), startDate, endDate);
        return comments;
    }

    @Override
    public int getEmployeeCommentsCount(String number) {
        int count = commentsMapper.getEmployeeCommentsCount(number);
        return count;
    }

    @Override
    public List<Comments> getEmployeeComments(String number, Integer pageNum, String limit) {
        List<Comments> comments = commentsMapper.getEmployeeComments( number, pageNum, Integer.valueOf(limit));
        return comments;
    }
}
