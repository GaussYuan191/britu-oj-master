package com.britu.oj.service;

import com.britu.oj.entity.ProblemResult;
import com.britu.oj.response.ProblemVO;
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

    RestResponseVO<Problem> getById(String problemId);

    RestResponseVO insert(ProblemRequest problemRequest);

    RestResponseVO delById(String id);

    RestResponseVO<Problem> updateById(ProblemRequest problemRequest);

    RestResponseVO<PageInfo> listProblemVOToPage(Integer userId,Integer flag,Integer sort,String keyword, Integer level, String tagIds, Integer pageNum, Integer pageSize);

    RestResponseVO<List<ProblemDetailVO>> listSuggestProblem(double ability, Integer row);

    RestResponseVO<List<ProblemVO>> passthroughSuggestProblem(String problemtype, Integer userId);

    RestResponseVO<Integer> randomProblemId();

    RestResponseVO<ProblemDetailVO> getDetailVOById(String problemId);

    RestResponseVO<ProblemResult> querySource_code(Integer compId, String problemId, Integer userId);
}
