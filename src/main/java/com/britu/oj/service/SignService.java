package com.britu.oj.service;

import com.britu.oj.response.RestResponseVO;
import com.britu.oj.entity.Sign;

/**
 * @author m969130721@163.com
 * @date 18-12-23 下午5:07
 */
public interface SignService {

    RestResponseVO insert(Sign sign);

    RestResponseVO delById(Integer id);

    RestResponseVO updateById(Sign sign);
}
