package com.britu.oj.exception;

/**
 * @program: brituoj
 * @description: 教程没找到异常处理
 * @author: Gauss
 * @date: 2020-07-29 20:06
 **/
public class CourseNotFoundException extends ApplicationException{
    private static final long seriaVersionUID = 5919924865407492637L;
    public CourseNotFoundException(int status,String msg){
        super(status,msg);
    }

}
