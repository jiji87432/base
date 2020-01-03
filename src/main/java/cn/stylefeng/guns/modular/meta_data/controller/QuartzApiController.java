package cn.stylefeng.guns.modular.meta_data.controller;

import cn.hutool.core.bean.BeanUtil;
import cn.stylefeng.guns.modular.app.service.HomeService;
import cn.stylefeng.guns.modular.meta_data.constant.factory.MetaDataFactory;
import cn.stylefeng.guns.modular.meta_data.entity.Config;
import cn.stylefeng.guns.modular.meta_data.model.ConfigDto;
import cn.stylefeng.guns.modular.meta_data.service.ConfigService;
import cn.stylefeng.guns.modular.meta_data.util.ResultUtil;
import cn.stylefeng.roses.core.base.controller.BaseController;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 定时任务控制器 -开放功能接口
 */
@Controller
@RequestMapping("/quartzApi")
public class QuartzApiController  extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(QuartzApiController.class);

    @Autowired
    private ConfigService configService;

//    @Autowired
//    private BulletinService bulletinService;

    @Autowired
    private HomeService homeService;
//
//    /**
//     * 详情
//     */
//    @RequestMapping(value = "/detail/{configId}")
//    @ResponseBody
//    public Object detail(@PathVariable("configId") Long configId) {
//        logger.info("###### 详情 ######");
//        Config config = configService.getById(configId);
//        ConfigDto conditionDto = new ConfigDto();
//        BeanUtil.copyProperties(config, conditionDto);
//        return conditionDto;
//    }
//
//    /**
//     * 返利
//     * @return
//     */
//    @RequestMapping(value = "/profit")
//    @ResponseBody
//    public String profit()
//    {
//        homeService.profit();
//        return ResultUtil.success();
//    }


}
