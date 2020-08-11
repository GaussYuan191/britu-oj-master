package com.britu.oj.service;

import com.britu.oj.response.RestResponseVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.BlogComment;

/**
 * @author m969130721@163.com
 * @date 18-12-23 下午4:48
 */
public interface BlogCommentService {
    RestResponseVO getById(Integer blogCommentId);

    RestResponseVO insert(BlogComment blogComment);

    RestResponseVO delById(Integer id);

    RestResponseVO updateById(BlogComment blogComment);

    RestResponseVO<PageInfo> listByBlogId2Page(Integer userId,Integer sort, Integer pageNum, Integer pageSize, Integer blogId);
}
