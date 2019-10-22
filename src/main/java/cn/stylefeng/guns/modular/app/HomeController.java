package cn.stylefeng.guns.modular.app;


import cn.stylefeng.guns.core.common.annotion.ApiGateway;
import cn.stylefeng.guns.modular.app.service.AppMemberService;
import cn.stylefeng.guns.modular.app.service.HomeService;
import cn.stylefeng.guns.modular.app.vo.LoginVo;
import cn.stylefeng.guns.modular.app.vo.RegVo;
import cn.stylefeng.guns.modular.app.vo.VersionVo;
import cn.stylefeng.guns.modular.base.util.RedisUtil;
import cn.stylefeng.guns.modular.base.util.Result;
import cn.stylefeng.guns.modular.system.service.LoginLogService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;




@RestController
@RequestMapping(value = "/app/v1")
public class HomeController {



    @Autowired
    RedisUtil redisUtil;

    @Autowired
    AppMemberService appMemberService;


    @Autowired
    LoginLogService loginLogService;


    @Autowired
    HomeService homeService;

    /**
     * 注册
     * @param regVo
     * @return
     */
    @PostMapping("/register")
    @ApiGateway(code = "A10002")
    public Result register(@Valid RegVo regVo) {
        return homeService.register(regVo);
    }

    /**
     *  登录
     * @param loginVo
     * @return
     */
    @PostMapping("/login")
    @ApiGateway(code = "A10001")
    public Result login(@Valid LoginVo loginVo) throws Exception{
        return homeService.login(loginVo);
    }

    /**
     * 忘记密码
     * @return
     */
    @PostMapping("/forgetPwd")
    @ApiGateway(code = "A10003")
    public Result forgetPwd(@Valid RegVo forgetVo){
        return homeService.forgetPwd(forgetVo);
    }


    /***
     * 用户协议
     */
    @PostMapping("/declares")
    public Result declares()
    {
        return homeService.declares();
    }

    /**
     * 测试 获取用户信息
     */
    @RequestMapping("/getInfo")
    public Result getInfo(String openId){

        return Result.fail(404,"空");
    }

    /**
     * 版本信息
     */
    @PostMapping("/version")
    public Result version(VersionVo versionVo){
        return homeService.version(versionVo);
    }


    /**
     * 退出登录
     */
    @PostMapping("/logout")
    public Result logout(@RequestHeader("token")String token)
    {
        return homeService.logout(token);
    }



}
