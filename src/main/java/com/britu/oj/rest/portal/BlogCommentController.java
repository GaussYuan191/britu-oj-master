package com.britu.oj.rest.portal;

import com.britu.oj.common.RestResponseEnum;
import com.britu.oj.response.RestResponseVO;
import com.britu.oj.response.UpVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.entity.User;
import com.britu.oj.service.BlogCommentService;
import com.britu.oj.service.UpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author m969130721@163.com
 * @date 19-1-30 下午3:44
 */
@RequestMapping("/blogComment")
@Controller
public class BlogCommentController {

    @Autowired
    private BlogCommentService blogCommentService;

    @Autowired
    private UpService upService;

    /**
     * 博客评论List
     *
     * @param userDetails
     * @param pageNum
     * @param pageSize
     * @param sort
     * @param blogId
     * @return
     */
    @RequestMapping("/listBlogComment2Page")
    @ResponseBody
    public RestResponseVO<PageInfo> listBlogComment2Page(@AuthenticationPrincipal UserDetails userDetails,
                                                         @RequestParam(defaultValue = "1") Integer pageNum,
                                                         @RequestParam(defaultValue = "10") Integer pageSize,
                                                         @RequestParam(defaultValue = "-1") Integer sort,
                                                         Integer blogId) {
        Integer userId = null;
        if (userDetails != null) {
            userId = ((User) userDetails).getId();
        }
        return blogCommentService.listByBlogId2Page(userId, sort, pageNum, pageSize, blogId);
    }


    /**
     * 博客评论点赞
     *
     * @param blogCommentId
     * @param userDetails
     * @return
     */
    @RequestMapping("/blogCommentUp")
    @ResponseBody
    public RestResponseVO<UpVO> blogUp(Integer blogCommentId, @AuthenticationPrincipal UserDetails userDetails) {
        if (userDetails == null) {
            return RestResponseVO.createByErrorEnum(RestResponseEnum.UNAUTHORIZED);
        }
        User user = (User) userDetails;
        return upService.blogCommentUp(blogCommentId, user.getId());
    }


}
