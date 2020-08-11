package com.britu.oj.exception;

/**
 * @program: brituoj
 * @description: 答案没找到的异常处理
 * @author: Gauss
 * @date: 2020-07-29 19:02
 **/
public class AnswerNotFoundException extends ApplicationException {
    private static final long seriaVersionUID = 2919904865407492637L;
    public AnswerNotFoundException(int status,String msg){
        super(status,msg);
    }
}
