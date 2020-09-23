package com.cykj.housewifery.mapper;

import com.cykj.housewifery.bean.Comments;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface CommentsMapper {

    int getCompanyCommentsCount(String companyId, String startDate, String endDate);

    List<Comments> getCompanyComments(String companyId, Integer pageNum, Integer limit, String startDate, String endDate);

    int getEmployeeCommentsCount(String number);

    List<Comments> getEmployeeComments(String number, Integer pageNum, Integer limit);
}
