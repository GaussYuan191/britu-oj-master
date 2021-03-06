package com.britu.oj.rest.backend;

import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.Tag;
import com.britu.oj.request.ProblemRequest;
import com.britu.oj.response.ProblemDetailVO;
import com.britu.oj.response.RestResponseVO;
import com.britu.oj.service.ProblemService;
import com.britu.oj.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author m969130721@163.com
 * @date 19-3-10 下午3:56
 */

@Controller("backendController")
@RequestMapping("/backend/problem")
public class ProblemController {

    @Autowired
    private ProblemService problemService;

    @Autowired
    private TagService tagService;

    private final Long DEFAULT_TIME = 1000L;

    private final Long DEFAULT_MEMORY = 262144L;

    /**
     * 跳转到题目列表页面
     *
     * @return
     */
    @RequestMapping("/problemListPage")
    public String problemListPage(HttpServletRequest request) {
        request.setAttribute("questionActive",true);
        request.setAttribute("problemActive",true);
        return "backend/problem/problem-list";
    }

    /**
     * 跳转到题目编辑页面
     *
     * @return
     */
    @RequestMapping("/problemEditPage")
    public String problemEditPage(HttpServletRequest request,String problemId) {
        ProblemDetailVO problemDetailVO = problemService.getDetailVOById(problemId).getData();
        if (problemDetailVO == null) {
            problemDetailVO = new ProblemDetailVO();
            problemDetailVO.setTime(DEFAULT_TIME);
            problemDetailVO.setMemory(DEFAULT_MEMORY);
        }
        List<Tag> tagList = tagService.listAll().getData();

        //set data
        request.setAttribute("tagList",tagList);
        request.setAttribute("questionActive",true);
        request.setAttribute("problemEditActive",true);
        request.setAttribute("problem",problemDetailVO);
        return "backend/problem/problem-edit";
    }



    @RequestMapping("/listProblem2Page")
    @ResponseBody
    public RestResponseVO<PageInfo> listProblem(@RequestParam(defaultValue = "-1") Integer sort,
                                                @RequestParam(defaultValue = "") String keyword,
                                                @RequestParam(defaultValue = "-1") Integer level,
                                                @RequestParam(defaultValue = "") String tagIds,
                                                @RequestParam(defaultValue = "1") Integer pageNum,
                                                @RequestParam(defaultValue = "15")Integer pageSize){
        return problemService.listProblemVOToPage(null,null,sort,keyword,level,tagIds,pageNum,pageSize);
    }



    /**
     * 添加-更新problem
     * @param problemRequest
     * @return
     */
    @RequestMapping("/save")
    @ResponseBody
    public RestResponseVO save(@RequestBody ProblemRequest problemRequest) {
        if (problemRequest.getId() != null) {
            return problemService.updateById(problemRequest);
        } else {
            return problemService.insert(problemRequest);
        }

    }




    /**
     * 删除problem
     * @param problemId
     * @return
     */
    @RequestMapping("/delete")
    @ResponseBody
    public RestResponseVO delete(String problemId){
        return problemService.delById(problemId);
    }




}


