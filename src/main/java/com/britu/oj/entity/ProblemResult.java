package com.britu.oj.entity;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

public class ProblemResult implements Serializable {

    private static final long serialVersionUID = 4807723399097914322L;

    private Integer id;

    private Integer userId;

    @NotNull
    private Integer problemId;

    private Integer compId;

    private Integer compScore;

    private String runNum;

    private Integer status;

    @NotBlank
    private String type;

    private Long time;

    private Long memory;

    private String errorMsg;

    @NotBlank
    private String sourceCode;

    private Date createTime;

    private Date updateTime;

    private String testcode;

    public ProblemResult(Integer id, Integer userId, @NotNull Integer problemId, Integer compId, Integer compScore, String runNum, Integer status, @NotBlank String type, Long time, Long memory, String errorMsg, @NotBlank String sourceCode, Date createTime, Date updateTime, String testcode) {
        this.id = id;
        this.userId = userId;
        this.problemId = problemId;
        this.compId = compId;
        this.compScore = compScore;
        this.runNum = runNum;
        this.status = status;
        this.type = type;
        this.time = time;
        this.memory = memory;
        this.errorMsg = errorMsg;
        this.sourceCode = sourceCode;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.testcode = testcode;
    }

    public ProblemResult() {
        super();
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getProblemId() {
        return problemId;
    }

    public void setProblemId(Integer problemId) {
        this.problemId = problemId;
    }

    public Integer getCompId() {
        return compId;
    }

    public void setCompId(Integer compId) {
        this.compId = compId;
    }

    public Integer getCompScore() {
        return compScore;
    }

    public void setCompScore(Integer compScore) {
        this.compScore = compScore;
    }

    public String getRunNum() {
        return runNum;
    }

    public void setRunNum(String runNum) {
        this.runNum = runNum;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public Long getMemory() {
        return memory;
    }

    public void setMemory(Long memory) {
        this.memory = memory;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public String getSourceCode() {
        return sourceCode;
    }

    public void setSourceCode(String sourceCode) {
        this.sourceCode = sourceCode;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getTestcode() {
        return testcode;
    }

    public void setTestcode(String testcode) {
        this.testcode = testcode;
    }

    @Override
    public String toString() {
        return "ProblemResult{" +
                "id=" + id +
                ", userId=" + userId +
                ", problemId=" + problemId +
                ", compId=" + compId +
                ", compScore=" + compScore +
                ", runNum='" + runNum + '\'' +
                ", status=" + status +
                ", type='" + type + '\'' +
                ", time=" + time +
                ", memory=" + memory +
                ", errorMsg='" + errorMsg + '\'' +
                ", sourceCode='" + sourceCode + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", testcode='" + testcode + '\'' +
                '}';
    }
}