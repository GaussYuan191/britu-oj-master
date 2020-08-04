package com.britu.oj.rest.portal;

import com.britu.oj.response.RestResponseVO;
import com.github.pagehelper.PageInfo;
import com.britu.oj.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author m969130721@163.com
 * @date 19-2-16 下午5:14
 */
@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private RegisterService registerService;

    /**
     * 用户比赛排名
     * @param pageNum
     * @param pageSize
     * @param compId
     * @return
     */
    @RequestMapping("/listRegisterByCompId2Page")
    @ResponseBody
    public RestResponseVO<PageInfo> listRegisterByCompId2Page(@RequestParam(defaultValue = "1") Integer pageNum,
                                                              @RequestParam(defaultValue = "10") Integer pageSize,
                                                              Integer compId) {
        return registerService.listRegisterByCompId2Page(compId,pageNum,pageSize);
    }

}
