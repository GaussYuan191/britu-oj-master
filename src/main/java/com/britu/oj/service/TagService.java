package com.britu.oj.service;

import com.britu.oj.response.RestResponseVO;
import com.britu.oj.entity.Tag;
import com.britu.oj.response.TagVO;

import java.util.List;

/**题目tag
 * @author m969130721@163.com
 * @date 18-12-23 下午3:41
 */

public interface TagService {

     RestResponseVO<List<TagVO>> listParentVOAll();

     RestResponseVO insert(Tag tag);

     RestResponseVO delById(Integer id);

     RestResponseVO updateById(Tag tag);

    RestResponseVO getById(Integer tagId);

    RestResponseVO list2Page(Integer pageNum, Integer pageSize, String keyword);

    RestResponseVO<List<Tag>> listAll();
}
