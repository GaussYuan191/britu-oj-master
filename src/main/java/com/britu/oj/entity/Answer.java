package com.britu.oj.entity;

import lombok.Data;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @program: brituoj
 * @description: 答案的实体
 * @author: Gauss
 * @date: 2020-07-28 18:58
 **/
@Data
@Entity
public class Answer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private String pid;             //答案表的ID
    private String problem_name;    //题目的名字
    private String answer_c;        //C语言对应的答案
    private String answer_cpro;     //++对应的答案
    private String answer_java;     //Java对应的答案
    private String answer_python2;  //Python2对应的答案
    private String answer_python3;  //Python3对应的答案


}
