package com.britu.oj.service;

import com.britu.oj.response.RestResponseVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.BlogCategory;

import java.util.List;

/**
 * @author m969130721@163.com
 * @date 19-1-27 下午6:01
 */
public interface BlogCategoryService {

    RestResponseVO getById(Integer id);

    RestResponseVO insert(BlogCategory blogCategory);

    RestResponseVO delById(Integer id);

    RestResponseVO updateById(BlogCategory blogCategory);

    RestResponseVO<List<BlogCategory>> listAll();

    RestResponseVO<PageInfo> listBlogCategory2Page(Integer pageNum, Integer pageSize, String keyword);
}
