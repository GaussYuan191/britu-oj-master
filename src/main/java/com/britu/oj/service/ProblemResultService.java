package com.britu.oj.service;

import com.britu.oj.response.ProblemResultDetailVO;
import com.britu.oj.response.ProblemResultSubmitVO;
import com.britu.oj.response.RestResponseVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.ProblemResult;

/**
 * @author m969130721@163.com
 * @date 18-12-17 下午1:44
 */
public interface ProblemResultService {

    RestResponseVO<ProblemResult> getById(Integer problemResultId);

    RestResponseVO delById(Integer problemResultId);

    RestResponseVO insert(ProblemResult problemResult);


    RestResponseVO listProblemResult2Page(Integer problemId, String name, String type, Integer status, Integer pageNum,Integer pageSize);

    RestResponseVO<ProblemResultSubmitVO> getByRunNum2SubmitVO(String runNum);

    RestResponseVO<ProblemResultDetailVO> getById2DetailVO(Integer problemResultId);

    RestResponseVO<PageInfo> listProblemResultCompetitionVO2Page(Integer pageNum, Integer pageSize, Integer userId, Integer compId);
}
