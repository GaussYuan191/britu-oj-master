package com.britu.oj.dao;

import com.britu.oj.response.CompetitionProblemVO;
import com.britu.oj.entity.CompetitionProblem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CompetitionProblemMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CompetitionProblem record);

    int insertSelective(CompetitionProblem record);

    CompetitionProblem selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CompetitionProblem record);

    int updateByPrimaryKey(CompetitionProblem record);

    List<CompetitionProblemVO> listVOByCompetitionId(Integer competitionId);

    String getScoreByCompIdProblemId(@Param("compId") Integer compId, @Param("problemId")  String problemId);

    CompetitionProblem getByCompIdProblemId(@Param("compId")Integer compId, @Param("problemId")String problemId);

    int deleteByCompId(Integer compId);


}