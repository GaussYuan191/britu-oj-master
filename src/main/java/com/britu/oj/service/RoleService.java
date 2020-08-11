package com.britu.oj.service;


import com.britu.oj.response.RestResponseVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.Role;

public interface RoleService {

    RestResponseVO getById(Integer roleId);

    RestResponseVO insert(Role role);

    RestResponseVO delById(Integer id);

    RestResponseVO updateById(Role role);

    RestResponseVO<PageInfo> listRole2Page(Integer pageNum, Integer pageSize,String keyword);

    RestResponseVO listRole();

}
