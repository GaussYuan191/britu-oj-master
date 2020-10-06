package com.britu.oj.entity;

import lombok.Data;

/**
 * @program: britu-oj
 * @description: 闯关题目信息
 * @author: Gauss
 * @date: 2020-09-12 11:05
 **/
@Data
public class Problem_pt {
    private String pid;     //题目ID
    private int status;     //该题目的状态 0 未做 1 正确 2 错误

    public Problem_pt(String pid,Integer status){
        this.pid = pid;
        this.status =status;
    }


}
