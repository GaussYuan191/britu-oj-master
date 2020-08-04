package com.britu.oj.dao;

import com.britu.oj.entity.Up;
import org.apache.ibatis.annotations.Param;

public interface UpMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Up record);

    int insertSelective(Up record);

    Up selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Up record);

    int updateByPrimaryKey(Up record);

    Up getByBlogIdUserId(@Param("blogId") Integer blogId,@Param("userId") Integer userId);

    Up getByBlogCommentIdUserId(@Param("blogCommentId") Integer blogCommentId,@Param("userId") Integer userId);

    int countBlogCommentById(Integer blogCommentId);

    int countBlogById(Integer blogId);

    int deleteByBlogId(Integer blogId);
}