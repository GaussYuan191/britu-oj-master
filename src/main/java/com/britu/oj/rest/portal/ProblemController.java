package com.britu.oj.rest.portal;

import com.britu.oj.common.ExceptionStatusConst;
import com.britu.oj.entity.Answer;
import com.britu.oj.exception.AnswerNotFoundException;
import com.britu.oj.exception.ProblemNotFoundException;
import com.britu.oj.repository.AnswerCql;
import com.britu.oj.response.ProblemDetailVO;
import com.britu.oj.response.RestResponseVO;
import com.britu.oj.response.TagVO;
import com.britu.oj.service.ProblemService;
import com.britu.oj.service.AbilityService;
import com.britu.oj.service.TagService;
import com.britu.oj.utils.SpendTimeUtil;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author m969130721@163.com
 * @date 18-12-17 上午10:37
 */
@Controller
@RequestMapping("/problem")
public class ProblemController {

    @Autowired
    private ProblemService problemService;

    @Autowired
    private TagService tagService;

    @Autowired
    AnswerCql answerCql;

    @Autowired
    private AbilityService abilityService;

    private final Integer SUGGEST_PROBLEM_ROW = 5;

    /**
     * 跳转到题目List页面
     *
     * @param request
     * @return
     */
    @RequestMapping("/problemListPage")
    public String problemListPage(HttpServletRequest request,
                                  @RequestParam(defaultValue = "") String keyword) {
        //题目标签
        List<TagVO> tagList = tagService.listParentVOAll().getData();

        //set data
        request.setAttribute("tagList", tagList);
        request.setAttribute("keyword", keyword);
        request.setAttribute("active2", true);
        return "portal/problem/problem-list";
    }


    /**
     * 题目列表
     *
     * @param userDetails
     * @param pageNum
     * @param pageSize
     * @param sort
     * @param keyword
     * @param level
     * @param tagIds
     * @return
     */
    @RequestMapping("/listProblem2Page")
    @ResponseBody
    public RestResponseVO<PageInfo> listProblem2Page(@AuthenticationPrincipal UserDetails userDetails,
                                                     @RequestParam(defaultValue = "1") Integer pageNum,
                                                     @RequestParam(defaultValue = "20") Integer pageSize,
                                                     @RequestParam(defaultValue = "-1", required = false) Integer sort,
                                                     @RequestParam(defaultValue = "", required = false) String keyword,
                                                     @RequestParam(defaultValue = "-1", required = false) Integer level,
                                                     @RequestParam(defaultValue = "",required = false) String tagIds) {
        Integer userId = null;
        if (userDetails != null) {
            userId = ((User) userDetails).getId();
        }
        //公开的题目
        Integer flag = 0;
        return problemService.listProblemVOToPage(userId,flag, sort, keyword, level, tagIds, pageNum, pageSize);
    }


    /**
     * 题目详情页面
     *
     * @param request
     * @param problemId
     * @return
     */
    @RequestMapping("/problemDetailPage")
    public String problemDetailPage(@AuthenticationPrincipal UserDetails userDetails,HttpServletRequest request, Integer problemId,Integer compId) {
        Integer u_id;
        if (userDetails == null) {
            System.out.println("请先登入");

        }
        else{
            User user = (User) userDetails;
            u_id = user.getId();
            double ability = abilityService.GetAbility(u_id);
            Integer SpendTime = SpendTimeUtil.GetSpendTime(ability);
            System.out.println(SpendTime);
        }


        ProblemDetailVO detailVO = problemService.getDetailVOById(problemId).getData();
        if (detailVO == null) {
            throw new ProblemNotFoundException(ExceptionStatusConst.PROBLEM_NOT_FOUND_EXP, "未找到该题号的题目");
        }
        //set data
        request.setAttribute("problem", detailVO);
        request.setAttribute("compId", compId);
        request.setAttribute("active2", true);
        return "portal/problem/problem-detail";
    }
    @RequestMapping("/answer")

    public String problemAnswer(HttpServletRequest request,Integer problemId,Integer compId){
        Answer answerList =  answerCql.findByPid(problemId);
        if(answerList == null){
            throw new AnswerNotFoundException(ExceptionStatusConst.PROBLEM_ANSWER_NOT_STARTED_EXP,"未找到该题号的答案");
        }
        ProblemDetailVO detailVO = problemService.getDetailVOById(problemId).getData();
        if (detailVO == null) {
            throw new ProblemNotFoundException(ExceptionStatusConst.PROBLEM_NOT_FOUND_EXP, "未找到该题号的题目");
        }
        request.setAttribute("answer",answerList);
        request.setAttribute("problem", detailVO);
        request.setAttribute("compId", compId);
        request.setAttribute("active2",true);
        return "portal/problem/problem-answer";

    }

    /**
     * 根据用户的能力推荐5道题目
     *
     * @param u_id
     * @return
     */
    @RequestMapping("/suggestProblemList")
    @ResponseBody
    public RestResponseVO<List<ProblemDetailVO>> suggestProblemList(@AuthenticationPrincipal UserDetails userDetails) {
        Integer u_id;
        if (userDetails == null) {
            u_id = 1;

        }
        else{
            User user = (User) userDetails;
            u_id = user.getId();
        }
        double ability = abilityService.GetAbility(u_id);
        return problemService.listSuggestProblem(ability, SUGGEST_PROBLEM_ROW);
    }

    /**
     * 随机选择一道题目
     *
     * @return
     */
    @RequestMapping("/randomProblem")
    public String randomProblem(HttpServletRequest request) {
        RestResponseVO<Integer> serverResponse = problemService.randomProblemId();
        if (serverResponse.isSuccess()) {
            return "redirect:/problem/problemDetailPage?problemId=" + serverResponse.getData();
        } else {
            //fixme
            return "500";
        }
    }


}
