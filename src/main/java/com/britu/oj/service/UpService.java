package com.britu.oj.service;

import com.britu.oj.response.RestResponseVO;
import com.britu.oj.response.UpVO;
import com.britu.oj.entity.Up;

/**
 * @author m969130721@163.com
 * @date 18-12-23 下午4:54
 */
public interface UpService {
    RestResponseVO insert(Up up);

    RestResponseVO delById(Integer id);

    RestResponseVO updateById(Up up);

    RestResponseVO<UpVO> blogUp(Integer blogId, Integer userId);

    RestResponseVO<UpVO> blogCommentUp(Integer blogCommentId,Integer userId);


}
