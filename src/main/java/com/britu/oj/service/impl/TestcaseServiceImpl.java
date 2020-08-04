package com.britu.oj.service.impl;

import com.britu.oj.common.RestResponseEnum;
import com.britu.oj.response.RestResponseVO;
import com.britu.oj.service.TestcaseService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * @author m969130721@163.com
 * @date 19-3-10 下午4:28
 */
@Slf4j
@Service
public class TestcaseServiceImpl implements TestcaseService {


    /**
     * todo 超链接
     * @param problemId
     * @return
     */
    @Override
    public RestResponseVO listTestcaseByProblemId(Integer problemId) {
        if (problemId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        return null;
    }



}
