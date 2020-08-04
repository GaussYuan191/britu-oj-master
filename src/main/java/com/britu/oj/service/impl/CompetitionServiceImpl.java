package com.britu.oj.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.britu.oj.common.CommonConst;
import com.britu.oj.common.RestResponseEnum;
import com.britu.oj.dao.CompetitionProblemMapper;
import com.britu.oj.dao.RegisterMapper;
import com.britu.oj.response.CompetitionDetailVO;
import com.britu.oj.response.CompetitionVO;
import com.britu.oj.response.RestResponseVO;
import com.britu.oj.common.StringConst;
import com.britu.oj.dao.CompetitionMapper;
import com.britu.oj.entity.Competition;
import com.britu.oj.service.CompetitionService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @author m969130721@163.com
 * @date 18-12-17 下午1:47
 */
@Service
public class CompetitionServiceImpl implements CompetitionService {

    @Autowired
    private CompetitionMapper competitionMapper;

    @Autowired
    private RegisterMapper registerMapper;

    @Autowired
    private CompetitionProblemMapper competitionProblemMapper;

    @Override
    public RestResponseVO<Competition> getById(Integer competitionId) {
        if (competitionId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        Competition competition = competitionMapper.selectByPrimaryKey(competitionId);
        return RestResponseVO.createBySuccess(competition);
    }

    @Override
    public RestResponseVO insert(Competition competition) {
        if (competition == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        if (StringUtils.isEmpty(competition.getPassword())) {
            competition.setPassword(null);
        }
        int effect = competitionMapper.insertSelective(competition);
        return effect > 0 ? RestResponseVO.createBySuccessMessage(StringConst.ADD_SUCCESS,competition)
                : RestResponseVO.createByErrorMessage(StringConst.ADD_FAIL);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public RestResponseVO delById(Integer competitionId) {
        if (competitionId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        int effect = competitionMapper.deleteByPrimaryKey(competitionId);
        if (effect > 0) {
            competitionProblemMapper.deleteByCompId(competitionId);
            return RestResponseVO.createBySuccessMessage(StringConst.DEL_SUCCESS);
        }
        return RestResponseVO.createByErrorMessage(StringConst.DEL_FAIL);
    }

    @Override
    public RestResponseVO updateById(Competition competition) {
        if (competition == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        int effect = competitionMapper.updateByPrimaryKeySelective(competition);
        return effect > 0 ? RestResponseVO.createBySuccessMessage(StringConst.UPDATE_SUCCESS)
                : RestResponseVO.createByErrorMessage(StringConst.UPDATE_FAIL);
    }

    @Override
    public RestResponseVO<CompetitionDetailVO> getCompetitionDetailVOById(Integer userId, Integer compId) {
        if (compId == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.INVALID_REQUEST);
        }
        CompetitionDetailVO detailVO = competitionMapper.getCompetitionDetailVOById(compId);
        int rows = 0;
        if (userId != null) {
            rows = registerMapper.countByUserIdAndCompId(userId, compId);
            if (rows > 0) {
                detailVO.setUserRegistered(true);
            }
        }
        //set status
        setCompetitionStatus(detailVO);

        return RestResponseVO.createBySuccess(detailVO);
    }

    @Override
    public RestResponseVO<PageInfo> listCompetitionVO2Page(Integer pageSize, Integer pageNum, String keyword) {
        PageHelper.startPage(pageNum, pageSize);
        List<CompetitionVO> competitionVOList = competitionMapper.listCompetitionVO(keyword);
        PageInfo<CompetitionVO> pageInfo = new PageInfo<>(competitionVOList);

        return RestResponseVO.createBySuccess(pageInfo);
    }

    @Override
    public RestResponseVO<List<CompetitionDetailVO>> listLastCompetitionDetailVO(Integer pageSize) {
        List<CompetitionDetailVO> competitionVOList = competitionMapper.listLastCompetitionDetailVO(pageSize);
        //set status
        for (CompetitionDetailVO detailVO : competitionVOList) {
            setCompetitionStatus(detailVO);
        }
        return RestResponseVO.createBySuccess(competitionVOList);
    }


    private void setCompetitionStatus(CompetitionDetailVO detailVO) {
        if (detailVO != null) {
            Date startTime = detailVO.getStartTime();
            Date endTime = detailVO.getEndTime();
            Date nowDate = new Date();
            boolean isNotStarted = startTime.after(nowDate);
            boolean isClose = nowDate.after(endTime);
            if (isNotStarted) {
                detailVO.setCompetitionStatus(CommonConst.CompetitionStatus.NOT_STARTED);

            } else if (isClose) {
                detailVO.setCompetitionStatus(CommonConst.CompetitionStatus.CLOSE);

            } else {
                detailVO.setCompetitionStatus(CommonConst.CompetitionStatus.PROCESSING);
            }
        }
    }

}
