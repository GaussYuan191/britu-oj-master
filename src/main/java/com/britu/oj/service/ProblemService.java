package com.britu.oj.service;

import com.britu.oj.response.RestResponseVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.Problem;
import com.britu.oj.request.ProblemRequest;
import com.britu.oj.response.ProblemDetailVO;

import java.util.List;

/**
 * @author m969130721@163.com
 * @date 18-12-17 下午1:44
 */
public interface ProblemService {

    RestResponseVO<Problem> getById(Integer problemId);

    RestResponseVO insert(ProblemRequest problemRequest);

    RestResponseVO delById(Integer id);

    RestResponseVO<Problem> updateById(ProblemRequest problemRequest);

    RestResponseVO<PageInfo> listProblemVOToPage(Integer userId,Integer flag,Integer sort,String keyword, Integer level, String tagIds, Integer pageNum, Integer pageSize);

    RestResponseVO<List<ProblemDetailVO>> listSuggestProblem(Integer problemId, Integer row);

    RestResponseVO<Integer> randomProblemId();

    RestResponseVO<ProblemDetailVO> getDetailVOById(Integer problemId);

}
