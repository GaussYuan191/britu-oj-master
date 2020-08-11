package com.britu.oj.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.britu.oj.common.RestResponseEnum;
import com.britu.oj.dao.UpMapper;
import com.britu.oj.entity.Up;
import com.britu.oj.response.BlogCommentVO;
import com.britu.oj.response.RestResponseVO;
import com.britu.oj.common.StringConst;
import com.britu.oj.dao.BlogCommentMapper;
import com.britu.oj.entity.BlogComment;
import com.britu.oj.service.BlogCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author m969130721@163.com
 * @date 18-12-23 下午4:49
 */
@Service
public class BlogCommentServiceImpl implements BlogCommentService {
    @Autowired
    private BlogCommentMapper blogCommentMapper;

    @Autowired
    private UpMapper upMapper;

    @Override
    public RestResponseVO getById(Integer blogCommentId) {
        if (blogCommentId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        BlogComment blogComment = blogCommentMapper.selectByPrimaryKey(blogCommentId);
        return RestResponseVO.createBySuccess(blogComment);
    }

    @Override
    public RestResponseVO insert(BlogComment blogComment) {
        if (blogComment == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        int effect = blogCommentMapper.insertSelective(blogComment);
        return effect > 0 ? RestResponseVO.createBySuccessMessage(StringConst.ADD_SUCCESS)
                : RestResponseVO.createByErrorMessage(StringConst.ADD_FAIL);
    }

    @Override
    public RestResponseVO delById(Integer id) {
        if (id == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        int effect = blogCommentMapper.deleteByPrimaryKey(id);
        return effect > 0 ? RestResponseVO.createBySuccessMessage(StringConst.DEL_SUCCESS)
                : RestResponseVO.createByErrorMessage(StringConst.DEL_FAIL);
    }

    @Override
    public RestResponseVO updateById(BlogComment blogComment) {
        if (blogComment == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        int effect = blogCommentMapper.updateByPrimaryKeySelective(blogComment);
        return effect > 0 ? RestResponseVO.createBySuccessMessage(StringConst.UPDATE_SUCCESS)
                : RestResponseVO.createByErrorMessage(StringConst.UPDATE_FAIL);
    }

    @Override
    public RestResponseVO<PageInfo> listByBlogId2Page(Integer userId, Integer sort, Integer pageNum, Integer pageSize, Integer blogId) {
        PageHelper.startPage(pageNum, pageSize);
        List<BlogCommentVO> blogCommentVOList = blogCommentMapper.listBlogCommentVO(sort, blogId);
        if (userId != null) {
            for (BlogCommentVO blogCommentVO : blogCommentVOList) {
                Up up = upMapper.getByBlogCommentIdUserId(blogCommentVO.getId(), userId);
                if (up != null) {
                    blogCommentVO.setUserUpStatus(up.getStatus());
                }
            }
        }
        PageInfo<BlogCommentVO> pageInfo = new PageInfo<>(blogCommentVOList);
        return RestResponseVO.createBySuccess(pageInfo);
    }
}
