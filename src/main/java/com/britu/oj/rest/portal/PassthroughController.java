package com.britu.oj.rest.portal;

import com.britu.oj.response.ProblemDetailVO;
import com.britu.oj.response.ProblemVO;
import com.britu.oj.response.RestResponseVO;
import com.britu.oj.service.ProblemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: britu-oj
 * @description: 闯关页面的控制器
 * @author: Gauss
 * @date: 2020-09-07 21:15
 **/

@Controller
@RequestMapping("/passthrough")
public class PassthroughController {

    @Autowired
    private ProblemService problemService;


    @RequestMapping("")
    public String passthrough(HttpServletRequest request){
        ArrayList<String> problemlist = new ArrayList<>();
        problemlist.add("P1000");
        problemlist.add("P1001");
        problemlist.add("P1002");
        problemlist.add("P1003");
        problemlist.add("P1004");
        request.setAttribute("proplemlist",problemlist);
        request.setAttribute("active9", true);
        return "portal/problem/passthrough";
    }

    @RequestMapping("/getproblem")
    @ResponseBody
    public RestResponseVO<List<ProblemVO>> getproblem(){
        String problemtype = "字符串";
        Integer userid = 1;
        System.out.println(problemService.passthroughSuggestProblem(problemtype,userid).getData());
        return problemService.passthroughSuggestProblem(problemtype,userid);
    }
}
