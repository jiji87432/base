package cn.stylefeng.guns.modular.app.controller;

import cn.stylefeng.guns.modular.app.dto.ApiCoinDto;
import cn.stylefeng.guns.modular.app.dto.ApiPointDto;
import cn.stylefeng.guns.modular.app.dto.ApiShippingVo;
import cn.stylefeng.guns.modular.app.dto.ApiWithdrawCoinVo;
import cn.stylefeng.guns.modular.app.service.HomeService;
import cn.stylefeng.guns.modular.app.service.MemberService;
import cn.stylefeng.guns.modular.app.vo.*;
import cn.stylefeng.guns.modular.base.state.ProConst;
import cn.stylefeng.guns.modular.base.util.RedisUtil;
import cn.stylefeng.guns.modular.base.util.Result;
import cn.stylefeng.guns.modular.system.service.LoginLogService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * app入口
 */
@CrossOrigin
@RestController
@RequestMapping(value = "/api")
public class HomeApi {


    @Autowired
    RedisUtil redisUtil;

    @Autowired
    MemberService memberService;


    @Autowired
    LoginLogService loginLogService;


    @Autowired
    HomeService homeService;

    /**
     * 注册
     *
     * @param regVo
     * @return
     */
    @PostMapping("/register")
    public Result register(@Valid RegVo regVo) {
        return homeService.register(regVo);
    }

    /**
     * 登录
     *
     * @param loginVo
     * @return
     */
    @PostMapping("/login")
    public Result login(@Valid LoginVo loginVo) throws Exception {
        return homeService.login(loginVo);
    }

    /**
     * 忘记密码
     *
     * @return
     */
    @PostMapping("/forgetPwd")
    public Result forgetPwd(@Valid ForgetVo forgetVo) {
        return homeService.forgetPwd(forgetVo);
    }


    /**
     * 退出登录
     */
    @PostMapping("/logout")
    public Result logout(@RequestHeader("token") String token) {
        return homeService.logout(token);
    }

    /**
     * 获取验证码
     *
     * @param code 区号
     * @param phone 电话
     * @param type 类型
     * @return
     */
    @PostMapping("/getMsg")
    public Result msg(@RequestHeader(value = "token", required = false, defaultValue = "-1") String token,@RequestParam(defaultValue = "86") String code, @RequestParam(defaultValue = "1") String phone, @RequestParam(value = "type", required = false, defaultValue = "1") Long type) {
        return homeService.getMsg(token,code, phone, type);
    }


    /**
     * 刷新token
     */
    @PostMapping("/refreshToken")
    public Result refreshToken(@RequestHeader("token") String token) {
        return homeService.refreshToken(token);
    }


    /**
     * 安全中心
     */
    @PostMapping("/pwd")
    public Result pwd(@RequestHeader("token") String token, @Valid ApiPayPwdVo apiPayPwdVo) {
        return homeService.pwd(token, apiPayPwdVo);
    }


    /**
     * 签到
     */
    @PostMapping("/checkIn")
    public Result checkIn(@RequestHeader("token") String token) {
        return homeService.checkIn(token);
    }

    /**
     * 签到信息
     */
    @PostMapping("/checkInfo")
    public Result checkInfo(@RequestHeader("token") String token) {
        return homeService.checkInfo(token);
    }


    /**
     * ========================================================================================================
     *
     *
     *
     *
     *
     *
     *
     *
     *                                                  分隔接口
     *
     *
     *
     *
     *
     *
     *                                                  --------   任性空白框
     *
     *
     *
     *
     *
     *
     *
     *
     *
     * ========================================================================================================
     */


     /**
     * btcUsdt BTC行情价
     */
    @PostMapping("/myPoolBtcUsdt")
    public Result myPoolBtcUsdt()  {
        return homeService.myPoolBtcUsdt();
    }
     /**
     * 波形图
     */
    @PostMapping("/myPoolChart")
    public Result myPoolChart()  {
        return homeService.myPoolChart();
    }




    /**
     * 流水记录
     */
    @PostMapping("/cashflow")
    public Result cashflow(@RequestHeader("token") String token, Page page, @RequestParam(defaultValue = "POWER") String type) throws Exception {
        return homeService.cashflow(token, page, type);
    }


    /**
     * （增删）用户钱包地址
     */
    @PostMapping("/coin")
    public Result coin(@RequestHeader("token") String token, @RequestParam(defaultValue = "-1") String type, ApiCoinDto dto) {
        return homeService.coin(token, type, dto);
    }

    /**
     * 用户钱包地址
     */
    @PostMapping("/coinList")
    public Result coinList(@RequestHeader("token") String token, Page page) {
        return homeService.coinList(token, page);
    }


    /**
     * 提币记录
     */
    @PostMapping("/coinRecord")
    public Result coinRecord(@RequestHeader("token") String token, @RequestParam(defaultValue = "W") String type, Page page) {
        return homeService.coinRecord(token, type, page);
    }

    /**
     * 提币详情
     */
    @PostMapping("/coinRecordDetail")
    public Result coinRecordDetail(@RequestHeader("token") String token, @RequestParam(defaultValue = "W") String type, @RequestParam(defaultValue = "-1") Long id) {
        return homeService.coinRecordDetail(token, type, id);
    }


    /**
     * 提币
     */
    @PostMapping("/withdrawCoin")
    public Result withdrawCoin(@RequestHeader("token") String token, @Valid ApiWithdrawCoinVo apiWithdrawCoinVo) throws Exception {
        return homeService.withdrawCoin(token, apiWithdrawCoinVo);
    }

    /**
     * 提币页面信息
     */
    @PostMapping("/withdrawPage")
    public Result withdrawPage(@RequestHeader("token") String token) throws Exception {
        return homeService.withdrawPage(token);
    }

    /**
     * 收货地址
     */
    @PostMapping("/getShipping")
    public Result getShipping(@RequestHeader("token") String token) {
        return homeService.getShipping(token);
    }

    /**
     * 编辑收货地址
     *
     * @param token
     * @param shippingVo
     * @param type
     * @return
     */
    @PostMapping("/shipping")
    public Result shipping(@RequestHeader("token") String token, @Valid ApiShippingVo shippingVo, String type) {
        return homeService.shipping(token, shippingVo, type);
    }


    /**
     * 用户信息
     */
    @PostMapping("/info")
    public Result info(@RequestHeader("token") String token) throws Exception {
        return homeService.info(token);
    }


    /**
     * /api/editInfo
     * 编辑信息
     */
    @PostMapping("/editInfo")
    public Result editInfo(@RequestHeader("token") String token, ApiUserInfoDto dto) {
        return homeService.editInfo(token, dto);
    }




    /**
     * 我的推广
     */
    @PostMapping("/myTeam")
    public Result myTeam(@RequestHeader("token") String token) {
        return homeService.myTeam(token);
    }












}
