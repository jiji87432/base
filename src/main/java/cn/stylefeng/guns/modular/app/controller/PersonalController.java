package cn.stylefeng.guns.modular.app.controller;


import cn.stylefeng.guns.modular.app.service.PersonalService;
import cn.stylefeng.guns.modular.base.util.Result;
import cn.stylefeng.roses.core.base.controller.BaseController;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * 用户个人中心模块控制器
 */
@RestController
@RequestMapping("/app/v1/personal")
public class PersonalController extends BaseController {

    @Autowired
    PersonalService personalService;

    /**
     * 联系客服
     */
    @RequestMapping("/contact")
    public Result contact()
    {
        return  personalService.contact();
    }


    /**
     * 业务文章
     * @param articleType
     * @return
     */
    @RequestMapping("/article")
    public Result article(String articleType)
    {
        return personalService.getArticle(articleType);
    }


    /**
     * notifyUrl
     *
     * @return
     */
    @ApiOperation(value = "notifyUrl - 测试")
    @PostMapping("/notifyUrl")
    public String notifyUrl(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String success = "success";
        System.err.println("回调监听：" + response.toString());
        Map<String, String> retMap = new HashMap<>();

        Set<Map.Entry<String, String[]>> entrySet = request.getParameterMap().entrySet();

        for (Map.Entry<String, String[]> entry : entrySet) {
            String name = entry.getKey();
            String[] values = entry.getValue();
            int valLen = values.length;

            if (valLen == 1) {
                retMap.put(name, values[0]);
            } else if (valLen > 1) {
                StringBuilder sb = new StringBuilder();
                for (String val : values) {
                    sb.append(",").append(val);
                }
                retMap.put(name, sb.toString().substring(1));
            } else {
                retMap.put(name, "");
            }
        }
        System.out.println("map:"+retMap.toString());
        return success;
    }


}
