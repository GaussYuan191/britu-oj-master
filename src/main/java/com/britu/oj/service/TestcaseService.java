package com.britu.oj.service;

import com.britu.oj.response.RestResponseVO;

/**
 * @author m969130721@163.com
 * @date 19-3-10 下午4:28
 */
public interface TestcaseService {

     RestResponseVO listTestcaseByProblemId(Integer problemId);


}
