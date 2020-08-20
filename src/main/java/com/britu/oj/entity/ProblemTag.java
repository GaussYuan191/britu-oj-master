package com.britu.oj.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class ProblemTag implements Serializable {

    private static final long serialVersionUID = 3822649254983520795L;

    private Integer id;

    private String problemId;

    private Integer tagId;

    private Date createTime;

    private Date updateTime;

    public ProblemTag(Integer id, String problemId, Integer tagId, Date createTime, Date updateTime) {
        this.id = id;
        this.problemId = problemId;
        this.tagId = tagId;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public ProblemTag(){
    }


}