package com.cykj.housewifery.service;


import com.cykj.housewifery.bean.Comments;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentsService {

    int getCompanyCommentsCount(@Param("companyId") String companyId,@Param("startDate") String startDate,@Param("endDate") String endDate);

    List<Comments> getCompanyComments(@Param("companyId") String companyId,@Param("pageNum") Integer pageNum,@Param("limit") String limit,@Param("startDate") String startDate,@Param("endDate") String endDate);

    int getEmployeeCommentsCount(String number);

    List<Comments> getEmployeeComments(String number, Integer pageNum, String limit);
}
