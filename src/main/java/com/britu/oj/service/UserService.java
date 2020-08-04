package com.britu.oj.service;


import com.britu.oj.response.RestResponseVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.Blog;
import com.britu.oj.entity.Problem;
import com.britu.oj.request.UserRequest;
import com.britu.oj.response.ProblemResultRecentVO;
import com.britu.oj.response.UserDetailVO;

import java.util.List;

/**
 * @author m969130721@163.com
 * @date 18-12-17 下午1:44
 */
public interface UserService {

    RestResponseVO addSignCount(Integer userId);

    RestResponseVO<UserDetailVO> getById(Integer userId);

    RestResponseVO insert(UserRequest request);

    RestResponseVO delById(Integer id);

    RestResponseVO lockById(Integer id);

    RestResponseVO activeById(Integer id);

    RestResponseVO updateById(UserRequest request);

    RestResponseVO sendRegisterEmail(String email);

    RestResponseVO sendForgetEmail(String email);

    RestResponseVO forgetRestPassword(String token,String email,String password);

    RestResponseVO register(String token, UserRequest request);

    RestResponseVO<PageInfo> listRankUser2Page(Integer pageNum, Integer pageSize, String keyword);

    RestResponseVO checkLoginByAdmin(String username,String password);

    RestResponseVO<PageInfo> listUser2Page(Integer pageNum,Integer pageSize,String keyword);

    RestResponseVO<List<Problem>> listAllSolveProblemByUserId(Integer userId);

    RestResponseVO<List<Blog>> listRecentBlog(Integer userId, Integer recentSize);

    RestResponseVO<List<ProblemResultRecentVO>> listRecentProblem(Integer userId, Integer recentSize);

    RestResponseVO listProblemRecord(Integer userId, Integer flag);

    RestResponseVO updateSecurity(Integer id, String email, String oldPassword, String password);
}
