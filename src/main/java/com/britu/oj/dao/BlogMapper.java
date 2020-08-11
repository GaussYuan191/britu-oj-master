package com.britu.oj.dao;

import com.britu.oj.response.BlogDetailVO;
import com.britu.oj.response.BlogVO;
import com.britu.oj.entity.Blog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Blog record);

    int insertSelective(Blog record);

    Blog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Blog record);

    int updateByPrimaryKey(Blog record);

    List<BlogVO> list2BlogVO(@Param("sort") Integer sort, @Param("keyword") String keyword, @Param("bcId") Integer bcId);

    BlogDetailVO getBlogDetailVO(Integer blogId);

    int updateViewCountIncrease(Integer blogId);

    List<BlogVO> listHotBlogVO(Integer pageSize);

    List<BlogVO> listLastCommentBlogVO(Integer pageSize);

    List<BlogVO> listNoticeBlogVO(Integer pageSize);

    List<Blog> listRecentBlog(@Param("userId")Integer userId,@Param("recentSize") Integer recentSize);

}