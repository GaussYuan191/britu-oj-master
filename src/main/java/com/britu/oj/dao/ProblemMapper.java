package com.britu.oj.dao;

import com.britu.oj.response.ProblemDetailVO;
import com.britu.oj.response.ProblemVO;
import com.britu.oj.entity.Problem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProblemMapper {
    int deleteByPrimaryKey(String id);

    int insert(Problem record);

    int insertSelective(Problem record);

    Problem selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Problem record);

    int updateByPrimaryKey(Problem record);

    /**
     * 根据题目Id 随机返回推荐题目
     * @param problemId
     * @param row
     * @return
     */
    List<ProblemDetailVO> listSuggestProblem(@Param("problemId") String problemId, @Param("row") int row);

    Integer countRandomProblemId();

    List<ProblemVO> listAll2VO(@Param("flag")Integer flag, @Param("sort") Integer sort, @Param("keyword") String keyword,
                               @Param("level") Integer level, @Param("tagIdsList") List<Integer> tagIdsList);


    ProblemDetailVO getDetailVOById(String problemId);

    List<Problem> listAllSolveProblemByUserId(Integer userId);


}