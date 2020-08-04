package com.britu.oj.repository;

import com.britu.oj.entity.Answer;
import org.springframework.data.repository.CrudRepository;

/**
 * @program: brituoj
 * @description: 答案仓库
 * @author: Gauss
 * @date: 2020-07-29 19:01
 **/
public interface AnswerCql extends CrudRepository<Answer,Integer> {
    Answer findByPid(Integer pid);
}
