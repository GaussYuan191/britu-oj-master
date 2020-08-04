package com.britu.oj.repository;


import com.britu.oj.entity.Course;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

/**
 * @program: brituoj
 * @description: 教程仓库
 * @author: Gauss
 * @date: 2020-07-29 19:25
 **/
public interface CourseCql extends CrudRepository<Course,Integer> {
   Course findAllByid(Integer id);
}
