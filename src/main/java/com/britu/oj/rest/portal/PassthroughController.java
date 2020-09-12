package com.britu.oj.rest.portal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

/**
 * @program: britu-oj
 * @description: 闯关页面的控制器
 * @author: Gauss
 * @date: 2020-09-07 21:15
 **/

@Controller
public class PassthroughController {
    @RequestMapping("/passthrough")
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
}
