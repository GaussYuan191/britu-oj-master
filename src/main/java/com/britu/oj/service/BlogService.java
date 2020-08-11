package com.britu.oj.service;

import com.britu.oj.response.BlogDetailVO;
import com.britu.oj.response.BlogVO;
import com.britu.oj.response.RestResponseVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.Blog;

import java.util.List;

/**
 * @author m969130721@163.com
 * @date 18-12-23 下午4:35
 */
public interface BlogService {

    RestResponseVO<Blog> getById(Integer blogId);

    RestResponseVO insert(Blog blog);

    RestResponseVO delById(Integer id);

    RestResponseVO updateById(Blog blog);

    RestResponseVO<PageInfo> listBlogVO2Page(Integer pageNum, Integer pageSize,Integer sort, String keyword, Integer bcId);

    RestResponseVO<BlogDetailVO> getBlogDetailVOById(Integer blogId, Integer userId);

    RestResponseVO updateViewCount(Integer blogId);

    RestResponseVO<List<BlogVO>> listHotBlogVO(Integer pageSize);

    RestResponseVO<List<BlogVO>> listLastCommentBlogVO(Integer pageSize);

    RestResponseVO<List<BlogVO>> listNoticeBlogVO(Integer pageSize);

}
