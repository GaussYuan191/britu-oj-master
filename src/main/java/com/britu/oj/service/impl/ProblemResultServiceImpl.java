package com.britu.oj.service.impl;

import com.britu.oj.response.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.britu.oj.common.JudgeStatusEnum;
import com.britu.oj.common.RestResponseEnum;
import com.britu.oj.dao.TestcaseResultMapper;
import com.britu.oj.entity.TestcaseResult;
import com.britu.oj.common.StringConst;
import com.britu.oj.dao.ProblemResultMapper;
import com.britu.oj.entity.ProblemResult;
import com.britu.oj.service.CompetitionProblemService;
import com.britu.oj.service.ProblemResultService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.*;
import java.util.List;

/**
 * @author m969130721@163.com
 * @date 18-12-26 下午8:01
 */
@Service
public class ProblemResultServiceImpl implements ProblemResultService {
    @Autowired
    private ProblemResultMapper problemResultMapper;

    @Autowired
    private TestcaseResultMapper testcaseResultMapper;

    @Autowired
    private CompetitionProblemService competitionProblemService;

    @Value("${file.server.testcase.dir}")
    private String fileServerTestcaseDir;


    @Override
    public RestResponseVO<ProblemResult> getById(Integer problemResultId) {
        if (problemResultId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        ProblemResult problemResult = problemResultMapper.selectByPrimaryKey(problemResultId);
        return problemResult != null ? RestResponseVO.createBySuccess(problemResult)
                : RestResponseVO.createByError();
    }

    @Override
    public RestResponseVO delById(Integer problemResultId) {
        if (problemResultId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        int effect = problemResultMapper.deleteByPrimaryKey(problemResultId);
        return effect > 0 ? RestResponseVO.createBySuccessMessage(StringConst.DEL_SUCCESS)
                : RestResponseVO.createByErrorMessage(StringConst.DEL_FAIL);
    }

    @Override
    public RestResponseVO insert(ProblemResult problemResult) {
        if (problemResult == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        int effect = problemResultMapper.insertSelective(problemResult);
        return effect > 0 ? RestResponseVO.createBySuccessMessage(StringConst.DEL_SUCCESS)
                : RestResponseVO.createByErrorMessage(StringConst.DEL_FAIL);
    }

    @Override
    public RestResponseVO<PageInfo> listProblemResult2Page(String problemId, String name, String type, Integer status, Integer pageNum, Integer pageSize) {
        problemId = null;
        PageHelper.startPage(pageNum, pageSize, true);
        List<ProblemResultVO> problemResultList = problemResultMapper.listProblemResult(problemId, name, type, status);
        for (ProblemResultVO problemResultVO : problemResultList) {
            List<TestcaseResult> testcaseResultList = testcaseResultMapper.listByProblemResultId(problemResultVO.getId());
            if (testcaseResultList != null) {
                int acCount = 0;
                for (TestcaseResult testcaseResult : testcaseResultList) {
                    if (JudgeStatusEnum.ACCEPTED.getStatus().equals(testcaseResult.getStatus())) {
                        acCount++;
                    }
                }
                int score = (int) ((acCount * 1.0 / testcaseResultList.size()) * 100);
                problemResultVO.setScore(score);
            }

        }
        PageInfo<ProblemResultVO> pageInfo = new PageInfo<ProblemResultVO>(problemResultList);
        return RestResponseVO.createBySuccess(pageInfo);
    }

    @Override
    public RestResponseVO<ProblemResultSubmitVO> getByRunNum2SubmitVO(String runNum) {
        if (StringUtils.isBlank(runNum)) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        ProblemResultSubmitVO resultSubmitVO = problemResultMapper.getByRunNum2SubmitVO(runNum);
        return RestResponseVO.createBySuccess(resultSubmitVO);
    }

    @Override
    public RestResponseVO<ProblemResultDetailVO> getById2DetailVO(Integer problemResultId) {
        if (problemResultId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        ProblemResultDetailVO detailVO = problemResultMapper.getById2DetailVO(problemResultId);
        if (detailVO != null) {
            List<TestcaseResult> testcaseResultList = detailVO.getTestcaseResultList();
            if (testcaseResultList != null) {
                for (TestcaseResult testcaseResult : testcaseResultList) {
                    if (JudgeStatusEnum.ACCEPTED.getStatus().equals(testcaseResult.getStatus())) {
                        detailVO.setAcCount(detailVO.getAcCount() + 1);
                    }
                }
                int score = (int) ((detailVO.getAcCount() * 1.0 / testcaseResultList.size()) * 100);
                detailVO.setScore(score);
            }
        }

        return RestResponseVO.createBySuccess(detailVO);
    }

    @Override
    public RestResponseVO<PageInfo> listProblemResultCompetitionVO2Page(Integer pageNum, Integer pageSize, Integer userId, Integer compId) {
        if (pageNum == null || pageSize == null || userId == null || compId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        PageHelper.startPage(pageNum, pageSize, true);

        List<ProblemResultCompetitionVO> list = problemResultMapper.listProblemResultCompetitionVO2Page(compId, userId);
        for (ProblemResultCompetitionVO dataVO : list) {
            List<TestcaseResult> testcaseResultList = testcaseResultMapper.listByProblemResultId(dataVO.getId());
            for (TestcaseResult testcaseResult : testcaseResultList) {
                if (JudgeStatusEnum.ACCEPTED.getStatus().equals(testcaseResult.getStatus())) {
                    dataVO.setAcCount(dataVO.getAcCount() + 1);
                }
            }
            Integer score = Integer.valueOf(competitionProblemService.getScoreByCompIdProblemId(compId, dataVO.getProblemId()).getData());
            if (score != null) {
                score = (int) ((dataVO.getAcCount() * 1.0 / testcaseResultList.size()) * score);
                dataVO.setScore(dataVO.getScore() + score);
            }

        }

        PageInfo<ProblemResultCompetitionVO> pageInfo = new PageInfo<>(list);

        return RestResponseVO.createBySuccess(pageInfo);
    }


    /**
     * todo
     * @param testcaseResultList
     * @return
     */
    private int getProblemResultBaseScore(List<TestcaseResult> testcaseResultList) {
        return testcaseResultList.size() == 5 ? 20 : testcaseResultList.size() == 10 ? 10 : 0;
    }

    /**
     *
     * @param testInput
     * @param testOutput
     * @param problemId
     * @return
     */
    @Override
    public RestResponseVO submit_input(String testInput,String testOutput,String problemId) {

        BufferedWriter bw = null,bw1 =null;
        File dir = new File(fileServerTestcaseDir+"/"+problemId);

        File problem_dir1 = new File(dir+"/input_test");
        File problem_dir2 = new File(dir+"/output_test");
        System.out.println(dir);


        try
        {
            if(!dir.exists()){
                dir.mkdir();
                if ((!problem_dir1.exists())&&(!problem_dir2.exists())) {
                    dir.mkdir();
                    problem_dir1.mkdir();
                    problem_dir2.mkdir();
                }
            }
            String str = problemId+".txt";
            File file = new File(problem_dir1, str);
            File file1 = new File(problem_dir2,str);
            if (!file.exists()) {
                file.createNewFile();
                file1.createNewFile();
            } else {
                System.out.print("文件已存在！");
            }

            bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
            bw1 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file1)));
            if (bw != null & bw1 != null) {
                bw.write(testInput+"");
                bw1.write(testOutput+"");
            }

        }catch (Exception e){
            e.printStackTrace();
        } finally {
            try {
                bw.close();
                bw1.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return RestResponseVO.createBySuccess();
    }

}
