package com.britu.oj.rest.portal;

import com.britu.oj.common.ExceptionStatusConst;
import com.britu.oj.entity.Course;
import com.britu.oj.exception.CourseNotFoundException;
import com.britu.oj.repository.CourseCql;
import com.britu.oj.response.TagVO;
import com.britu.oj.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @program: brituoj
 * @description: 课程、教程控制中心
 * @author: Gauss
 * @date: 2020-07-29 19:09
 **/
@Controller
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private TagService tagService;

    @Autowired
    private CourseCql courseCql;

    /**
     * 学习中页面
     * @return
     */
    @RequestMapping("/centre")
    public String centre(HttpServletRequest request,@RequestParam(defaultValue = "") String keyword){
        //题目标签
        List<TagVO> tagList = tagService.listParentVOAll().getData();

        //set data
        request.setAttribute("tagList", tagList);
        request.setAttribute("keyword", keyword);
        request.setAttribute("active8", true);
        //用于标签云的展示
        return "portal/course/course-centre";
    }

    /**
     * 教程展示页面
     * @param request
     * @param id
     * @return
     */
    @RequestMapping("/course_data")
    public String course_data(HttpServletRequest request,Integer id){
        Course courseList = courseCql.findAllByid(id);
        if(courseList == null){
            throw new CourseNotFoundException(ExceptionStatusConst.COURSE_NOT_STARTED_EXP,"教程没找到");
        }
        request.setAttribute("course",courseList);
        request.setAttribute("active8",true);
        return "portal/course/course-datail";
    }
}
