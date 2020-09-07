package com.britu.oj.rest.portal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

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
        request.setAttribute("active9", true);
        return "portal/problem/passthrough";
    }
}
