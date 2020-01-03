package cn.stylefeng.guns.modular.app.service;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import cn.stylefeng.guns.core.shiro.ShiroKit;
import cn.stylefeng.guns.modular.app.common.ApiStatus;
import cn.stylefeng.guns.modular.app.common.StatusCode;
import cn.stylefeng.guns.modular.app.controller.market.Kline;
import cn.stylefeng.guns.modular.app.controller.market.KlineResponse;
import cn.stylefeng.guns.modular.app.controller.market.bo.TicketBo;
import cn.stylefeng.guns.modular.app.dto.*;
import cn.stylefeng.guns.modular.app.entity.Member;
import cn.stylefeng.guns.modular.app.vo.*;
import cn.stylefeng.guns.modular.base.state.Constant;
import cn.stylefeng.guns.modular.base.state.ProConst;
import cn.stylefeng.guns.modular.base.state.PromotionFactory;
import cn.stylefeng.guns.modular.base.util.BigDecimalUtil;
import cn.stylefeng.guns.modular.base.util.RedisUtil;
import cn.stylefeng.guns.modular.base.util.Result;
import cn.stylefeng.guns.modular.bulletin.entity.AppVersion;
import cn.stylefeng.guns.modular.bulletin.entity.Contact;
import cn.stylefeng.guns.modular.bulletin.service.AppVersionService;
import cn.stylefeng.guns.modular.bulletin.service.ContactService;
import cn.stylefeng.guns.modular.bulletin.service.SendSMSExtService;
import cn.stylefeng.guns.modular.chain.entity.Coin;
import cn.stylefeng.guns.modular.chain.entity.Withdraw;
import cn.stylefeng.guns.modular.chain.service.CoinService;
import cn.stylefeng.guns.modular.chain.service.WithdrawService;
import cn.stylefeng.guns.modular.com.entity.*;
import cn.stylefeng.guns.modular.com.service.*;
import cn.stylefeng.guns.modular.fin.entity.Cashflow;
import cn.stylefeng.guns.modular.fin.entity.WalletHistory;
import cn.stylefeng.guns.modular.fin.service.CashflowService;
import cn.stylefeng.guns.modular.fin.service.WalletHistoryService;
import cn.stylefeng.guns.modular.promotion.entity.Declares;
import cn.stylefeng.guns.modular.promotion.entity.Wallet;
import cn.stylefeng.guns.modular.promotion.service.DeclaresService;
import cn.stylefeng.guns.modular.promotion.service.WalletService;
import cn.stylefeng.guns.modular.sevice_exception.WalletException;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import org.apache.commons.lang3.StringUtils;
import org.apache.lucene.queryparser.flexible.standard.config.PointsConfig;
import org.elasticsearch.monitor.os.OsStats;
import org.omg.CORBA.OBJECT_NOT_EXIST;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.validation.Valid;
import java.io.File;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.Format;
import java.time.*;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class HomeService
{

    Logger log = LoggerFactory.getLogger(HomeService.class);

    //状态：是
    public static final String YES = "1";
    //状态：否
    public static final String NO = "0";


    @Autowired
    MemberService memberService;

    @Autowired
    RedisUtil redisUtil;

    @Autowired
    DeclaresService declaresService;

    @Autowired
    AppVersionService versionService;

    @Autowired
    WalletService walletService;

    @Autowired
    WalletHistoryService walletHistoryService;


    @Autowired
    CashflowService cashflowService;

    @Autowired
    RegionService regionService;

    @Autowired
    SendSMSExtService sendSMSExtService;


    @Autowired
    ContactService contactService;

    @Autowired
    CheckInService checkInService;



    @Autowired
    MediaService mediaService;

    @Autowired
    WithdrawService withdrawService;

    @Autowired
    CoinService coinService;
    @Autowired
    ShippingService shippingService;


    @Autowired
    PhoneCodeService phoneCodeService;


    /**
     * 注册
     *
     * @param regVo
     * @return
     */
    public Result register(RegVo regVo)
    {

        if (!StrUtil.equals(regVo.getPassword(), regVo.getConfirmPwd()))
        {
            return Result.fail(HttpStatus.BAD_REQUEST.value(), "两次输入密码不同");
        }
        //用户名是否存在
        Member member = new Member();
        member.setPhone(regVo.getPhone());
        if (memberService.getOne(new QueryWrapper<>(member)) != null)
        {
            return Result.fail(StatusCode.VERIFY, "用户已存在");
        }

        String msg = (String) redisUtil.get(Constant.SMS + regVo.getPhone());
        if (!StrUtil.equals(msg, regVo.getMsg()))
        {
            return Result.fail(ApiStatus.MSG_ERROR.code(), ApiStatus.MSG_ERROR.msg());
        }

        //直推人
        Member director = PromotionFactory.me().getMember(null, regVo.getInviteCode());
        if (director == null)
        {
            return Result.fail(ApiStatus.NOT_DIRECTOR.code(), ApiStatus.NOT_DIRECTOR.msg());
        }

        //校验省市县
        boolean checkCity = checkCity(regVo);
        if (!checkCity)
        {
            return Result.fail(ApiStatus.BAD_REQUEST.code(), "省市区传值有误");
        }

        BeanUtil.copyProperties(regVo, member);
        // 完善账号信息
        String salt = ShiroKit.getRandomSalt(5);
        String password = ShiroKit.md5(regVo.getPassword(), salt);

        boolean flag = true;
        String uid = RandomUtil.randomString(6);
        while (flag)
        {
            Member uidM = new Member();
            uidM.setUid(uid);
            if (memberService.getOne(new QueryWrapper<>(uidM)) != null)
            {
                uid = RandomUtil.randomString(6);
            }
            else
            {
                flag = false;
            }
        }
        flag = true;
        String inviteCode = RandomUtil.randomStringUpper(8);
        while (flag)
        {
            Member uidM = new Member();
            uidM.setInviteCode(inviteCode);
            if (memberService.getOne(new QueryWrapper<>(uidM)) != null)
            {
                inviteCode = RandomUtil.randomStringUpper(8);
            }
            else
            {
                flag = false;
            }
        }

        StringBuffer pids = new StringBuffer();
        pids.append("/").append(director.getMemberId()).append(director.getParentRefereeId());
        member.setPassword(password)
                .setAreaCode(regVo.getCode())
                .setSalt(salt)
                .setRefereeId(director.getMemberId())
                .setParentRefereeId(pids.toString())
                .setType(ProConst.MemberType.TEMP.code())
                .setUid(uid)
                .setInviteCode(inviteCode)
                .setRegisterTime(new Date())
                .setCreateUser(-1L)
        ;
        //删除验证码
        redisUtil.del(Constant.SMS + regVo.getPhone());
        return memberService.save(member) ? Result.success("注册成功") : Result.fail(StatusCode.FAIL, "注册失败");
    }

    /**
     * 校验省市传值
     *
     * @param regVo
     * @return
     */
    private boolean checkCity(RegVo regVo)
    {
        if (PromotionFactory.me().getRegion(regVo.getProvinceId(), ProConst.RegionLevelType.PROVINCE.getCode()) == null)
            return false;
        if (PromotionFactory.me().getRegion(regVo.getCityId(), ProConst.RegionLevelType.CITY.getCode()) == null)
            return false;
        if (PromotionFactory.me().getRegion(regVo.getAreaId(), ProConst.RegionLevelType.AREA.getCode()) == null)
            return false;
        return true;
    }


    @Transactional(rollbackFor = Exception.class)
    public Result login(LoginVo loginVo) throws Exception
    {

        //先判断账号是否存在
        Member accountQ = new Member();
        accountQ.setPhone(loginVo.getPhone())
                .setAreaCode(loginVo.getCode())
                .setDel("N")
                .setStatus("Y");

        Member resultMember = memberService.getOne(new QueryWrapper(accountQ));
        String token = Constant.TOKEN + IdUtil.simpleUUID();

        if (resultMember == null)
        {
            return Result.fail(StatusCode.NOT_FOUND, "账号不存在");
        }

        //验证密码
        String salt = resultMember.getSalt();

        String checkPwd = ShiroKit.md5(loginVo.getPassword(), salt);
        if (!StrUtil.equals(checkPwd, resultMember.getPassword()))
        {
            return Result.fail(StatusCode.VERIFY, "用户名或密码错误");
        }


        boolean packet = false;
        String money = "0";


        /**
         * 登录时校验用户是否有钱包，没有则创建一个钱包
         */
        Wallet walletQ = new Wallet();
        walletQ.setMemberId(resultMember.getMemberId()).setDel("N");

        List walletR = walletService.list(new QueryWrapper<>(walletQ));

        if (walletR.size() == 0)
        {

            List<Wallet> walletList = new ArrayList<>();

            for (ProConst.WalletType type : ProConst.WalletType.values())
            {
                Wallet wallet = new Wallet();
                wallet.setMemberId(resultMember.getMemberId())
                        .setType(type.getCode())
                        .setCreateUser(resultMember.getMemberId());
                walletList.add(wallet);
            }
            walletService.saveBatch(walletList);
        }


        //单账号登录
        if (redisUtil.get(Constant.SINGLE_ACCOUNT + resultMember.getPhone()) != null)
        {
            //清除之前的token
            String oldToken = (String) redisUtil.get(Constant.SINGLE_ACCOUNT + resultMember.getPhone());
            redisUtil.del(oldToken);
        }
        redisUtil.set(token, resultMember, Long.parseLong(PromotionFactory.me().getSysConfigValueByCode(Constant.TOKEN_EXPIRE)));
        redisUtil.set(Constant.SINGLE_ACCOUNT + resultMember.getPhone(), token, Long.parseLong(PromotionFactory.me().getSysConfigValueByCode(Constant.TOKEN_EXPIRE)));

        resultMember.setLastLogin(new Date()).setUpdateUser(resultMember.getMemberId());
        memberService.updateById(resultMember);


        Map<String, Object> map = new HashMap<>();
        map.put("token", token);


        return Result.success("登陆结果", map);
    }


    public Result forgetPwd(ForgetVo forgetVo)
    {

        Member queryMember = new Member();
        queryMember.setPhone(forgetVo.getPhone())
                .setAreaCode(forgetVo.getCode())
                .setStatus("Y")
                .setDel("N");

        Member resultMember = memberService.getOne(new QueryWrapper<>(queryMember));
        if (resultMember == null)
        {
            return Result.fail(StatusCode.NOT_FOUND, "该手机号码不存在，请先注册");
        }
        if (!StrUtil.equals(forgetVo.getPassword(), forgetVo.getConfirmPwd()))
        {
            return Result.fail(HttpStatus.BAD_REQUEST.value(), "两次输入密码不同");
        }

        if (!checkMsg(forgetVo.getMsg(), forgetVo.getPhone()))
        {
            return Result.fail(HttpStatus.BAD_REQUEST.value(), "验证码有误");
        }

        // 完善账号信息
        String salt = ShiroKit.getRandomSalt(5);
        String password = ShiroKit.md5(forgetVo.getPassword(), salt);

        resultMember.setSalt(salt)
                .setPassword(password)
                .setUpdateUser(-1L);
        return memberService.updateById(resultMember) ? Result.success("修改成功") : Result.fail(StatusCode.FAIL, "修改失败");
    }

    /**
     * 手机验证码校验
     *
     * @param msg 手机验证码
     * @param msg 手机号码
     * @return
     */
    private boolean checkMsg(String msg, String phone)
    {
        if (redisUtil.get(Constant.SMS + phone) == null)
        {
            return false;
        }
        String msgCode = (String) redisUtil.get(Constant.SMS + phone);
        return StrUtil.equals(msg, msgCode);
    }


    /**
     * 用户协议
     *
     * @return
     */
    public Result declares()
    {
        List<Declares> list = declaresService.list();
        if (list.size() > 0)
        {
            return Result.success("用户协议", list.get(0).getContent());
        }
        return Result.success("暂无用户协议，请联系管理员");
    }

    public Result version(@Valid VersionVo versionVo)
    {

        Map<String, Object> map = new HashMap<>();
        AppVersion query = new AppVersion();
        query.setType(versionVo.getType());
        AppVersion versionR = versionService.getOne(new QueryWrapper<>(query));
        if (versionR == null)
        {
            return Result.fail(StatusCode.NOT_FOUND, "版本信息为空，联系管理员");
        }
        if (versionR.getVersion().equals(versionVo.getVersion()))
        {
            map.put("update", "N");
        }
        else
        {
            map.put("update", "Y");
        }
        map.put("content", versionR.getContent());
        map.put("address", versionR.getAddress());
        map.put("version", versionR.getVersion());
        return Result.success("返回结果", map);
    }

    public Result logout(String token)
    {
        redisUtil.del(token);
        return Result.success("已退出");
    }

    public Result areaList(int levelType, int regionId, String status)
    {
        Region region = new Region();
        region.setLevelType(Long.valueOf(levelType)).setParentId(Long.valueOf(regionId)).setStatus(status);
        List<ApiRegionDto> list = regionService.getBaseMapper().dtoList(region);
        if (status.equals("Y"))
        {
            Stream<ApiRegionDto> stream = list.stream().filter(entity -> status.equals(entity.getStatus()));
            list = stream.collect(Collectors.toList());
        }
        return Result.success(list);
    }

    public Result areaListCount(int levelType, int regionId, String status)
    {
        Region region = new Region();
        region.setLevelType(Long.valueOf(levelType)).setParentId(Long.valueOf(regionId)).setStatus(status);
        List<ApiRegionDto> list = regionService.getBaseMapper().dtoList(region);
        if (status.equals("Y"))
        {
            Stream<ApiRegionDto> stream = list.stream().filter(entity -> status.equals(entity.getStatus()));
            list = stream.collect(Collectors.toList());
        }
        return Result.success(list.size());
    }

    public Result areaList_()
    {
        Region region = new Region();
        region.setDel("N");
        List<Region> list = regionService.list(new QueryWrapper<>(region));
        return Result.success(list);
    }

    /**
     * 获取手机验证码
     *
     * @param code
     * @param phone
     * @return
     */
    public Result getMsg(String token, String code, String phone, Long type)
    {

        if (StrUtil.equals(token, "-1") && StrUtil.equals(phone, "1"))
        {
            return Result.fail(ApiStatus.BAD_REQUEST.code(), ApiStatus.BAD_REQUEST.msg());
        }
        //查手机号
        if (StrUtil.equals(token, "-1"))
        {
//            if (!phone.matches("^1\\d{10}$"))
//            {
//                return Result.fail(StatusCode.FAIL, "电话不合法");
//            }
        }
        else
        {//查token
            Member member = (Member) redisUtil.get(token);
            phone = member.getPhone();
            code = member.getAreaCode();
        }

        if (StringUtils.isNotBlank(phone))
        {
            int number = (int) ((Math.random() * 9 + 1) * 100000);
//            String content = "您的验证码为：%s,该验证码5分钟内有效，请勿泄露于他人。【168】";
            String content = PromotionFactory.me().getSysConfigValueByCode(Constant.SMS_CONTENT);
            content = String.format(content, number);
            /**
             *  短信开关
             *
             */

            if (PromotionFactory.me().getSysConfigValueByCode(Constant.SMS_OPEN).equals("Y"))
            {
                if (sendSMSExtService.sendSms(content, code + phone, type))
                {
                    redisUtil.set(Constant.SMS + phone, String.valueOf(number), Constant.SMS_TIMEOUT);
                    return Result.success("发送成功", 200, null);
                }
            }
            else
            {
                redisUtil.set(Constant.SMS + phone, String.valueOf(123456), Constant.SMS_TIMEOUT);
                Map<String, Object> map = new HashMap<>();
                map.put("msg", 123456);
//                map.put("content", content);
                return Result.success("本地测试，发送成功,", 200, map);
            }


            return Result.fail(StatusCode.FAIL, "发送失败，请重新发送");
        }
        return Result.fail(StatusCode.FAIL, "发送失败，手机号码有误");
    }


    /**
     * 刷新token
     *
     * @param token
     * @return
     */
    public Result refreshToken(String token)
    {
        Member member = (Member) redisUtil.get(token);
        redisUtil.del(token);
        String newToken = Constant.TOKEN + IdUtil.simpleUUID();
        redisUtil.set(newToken, member, Long.parseLong(PromotionFactory.me().getSysConfigValueByCode(Constant.TOKEN_EXPIRE)));
        Map<String, Object> map = new HashMap<>();
        map.put("newToken", newToken);
        return Result.success("新token", map);
    }


    /**
     * 安全中心
     *
     * @param token
     * @param apiPayPwdVo
     * @return
     */
    public Result pwd(String token, ApiPayPwdVo apiPayPwdVo)
    {
        Member member = (Member) redisUtil.get(token);

        if (!StrUtil.equals(apiPayPwdVo.getNewPwd(), apiPayPwdVo.getConfirmPwd()))
        {
            return Result.fail(ApiStatus.DIFF_PWD.code(), ApiStatus.DIFF_PWD.msg());
        }
        if (StrUtil.equals(apiPayPwdVo.getType(), "LOGIN"))
        {
            //修改登录密码
            return updatePassword(member, apiPayPwdVo);
        }
        if (StrUtil.equals(apiPayPwdVo.getType(), "PAY"))
        {
            //修改交易密码
            return updatePay(member, apiPayPwdVo);
        }
        return Result.fail(ApiStatus.BAD_REQUEST.code(), ApiStatus.BAD_REQUEST.msg());
    }


    /**
     * 修改登录密码
     *
     * @param member
     * @param apiPayPwdVo
     * @return
     */
    private Result updatePassword(Member member, ApiPayPwdVo apiPayPwdVo)
    {
        String oldPwdmd5 = ShiroKit.md5(apiPayPwdVo.getMsgOrOldPwd(), member.getSalt());
        if (!StrUtil.equals(oldPwdmd5, member.getPassword()))
        {
            return Result.fail(ApiStatus.OLD_ERROR.code(), ApiStatus.OLD_ERROR.msg());
        }
        String newSalt = ShiroKit.getRandomSalt(5);
        String newPwdmd5 = ShiroKit.md5(apiPayPwdVo.getNewPwd(), newSalt);
        member.setPassword(newPwdmd5).setSalt(newSalt).setUpdateUser(member.getMemberId());
        memberService.updateById(member);
        return Result.success("修改密码成功");
    }

    /**
     * 修改交易密码
     *
     * @param member
     * @param apiPayPwdVo
     * @return
     */
    private Result updatePay(Member member, ApiPayPwdVo apiPayPwdVo)
    {

        /**
         * 验证码校验
         */
        String msg = (String) redisUtil.get(Constant.SMS + member.getPhone());

        if (!StrUtil.equals(msg, apiPayPwdVo.getMsgOrOldPwd()))
        {
            return Result.fail(ApiStatus.MSG_ERROR.code(), ApiStatus.MSG_ERROR.msg());
        }
        String newSalt = ShiroKit.getRandomSalt(5);
        String newPwdmd5 = ShiroKit.md5(apiPayPwdVo.getNewPwd(), newSalt);
        member.setPayPassword(newPwdmd5).setPaySalt(newSalt).setUpdateUser(member.getMemberId());
        memberService.updateById(member);
        return Result.success("修改交易密码成功");
    }


    /**
     * 签到信息
     *
     * @param token
     * @return
     */
    @Transactional(rollbackFor = Exception.class)
    public Result checkIn(String token)
    {

        Member member = (Member) redisUtil.get(token);

        if (isTodayCheck(member.getMemberId()))
        {
            return Result.fail(ApiStatus.ERROR.code(), "今日已签到,无需重复签到");
        }

        CheckIn checkIn = new CheckIn();
        checkIn.setMemberId(member.getMemberId())
                .setCreateUser(member.getMemberId());
        checkInService.save(checkIn);

        /**
         *  分离业务：签到获取积分
         */
        try
        {
            servicePoint(member.getMemberId());
        } catch (Exception e)
        {
            e.printStackTrace();
        }

        return Result.success("签到成功");

    }

    /**
     * 签到获取积分
     *
     * @param memberId
     * @throws Exception
     */
    private void servicePoint(Long memberId) throws Exception
    {

        String point = PromotionFactory.me().getSysConfigValueByCode(Constant.CHECK_IN_AWARD);

        Wallet wallet = PromotionFactory.me().getWallet(memberId, ProConst.WalletType.POINT);
        //记录钱包历史
        PromotionFactory.me().saveWalletHistory(wallet);

        BigDecimal price = new BigDecimal(point);

        //流水记录
        PromotionFactory.me().saveCashflow(memberId, ProConst.WalletType.POINT, ProConst.CashFlowOpEnum.FLOW_IN, ProConst.CashFlowTypeEnum.CHECK_IN
                , price, ProConst.CoinType.POINT, price, ProConst.CoinType.POINT, BigDecimal.ZERO, ProConst.CoinType.POINT
                , null, null, null, null, wallet.getTotalPrice(), wallet.getTotalPrice().add(price)
                , Constant.SYS_PLATFORM, memberId);
        wallet.setTotalPrice(wallet.getTotalPrice().add(price)).setUpdateUser(memberId);
        walletService.updateById(wallet);

    }

    /**
     * 今日是否签到
     *
     * @param memberId
     * @return
     */
    private boolean isTodayCheck(Long memberId)
    {
        int count = checkInService.getBaseMapper().isTodayCheck(memberId);
        return count > 0 ? true : false;
    }

    /**
     * 签到信息
     *
     * @param token
     * @return
     */
    public Result checkInfo(String token)
    {

        Member member = (Member) redisUtil.get(token);
        //获取用户本月签到信息
        List<CheckIn> checkInList = checkInService.getBaseMapper().getCheckListByMemberId(member.getMemberId());

        Map<String, Object> map = new HashMap<>();

        List<Integer> days = new ArrayList<>();

        map.put("count", checkInService.getBaseMapper().getCountByMemberId(member.getMemberId()));
        map.put("isToday", "N");
        if (checkInList.size() > 0)
        {

            checkInList.forEach(entity ->
            {
                //获取时间实例
                Instant instant = entity.getCreateTime().toInstant();
                //获取时间地区ID
                ZoneId zoneId = ZoneId.systemDefault();
                //转换为LocalDate
                LocalDateTime localDateTime = instant.atZone(zoneId).toLocalDateTime();
                //获得LocalDateTime时间戳(东八区)
                localDateTime.toEpochSecond(ZoneOffset.of("+8"));
                LocalDate localDate = localDateTime.toLocalDate();
                days.add(localDate.getDayOfMonth());

                LocalDate now = LocalDate.now();
                if (localDate.getDayOfMonth() == now.getDayOfMonth())
                {
                    map.put("isToday", "Y");
                }
            });
        }
        map.put("days", days);
        map.put("awardInfo", PromotionFactory.me().getSysConfigValueByCode(Constant.CHECK_IN_AWARD));
        return Result.success("签到信息", map);
    }

    /**
     * ========================================================================================================
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * 分隔接口
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * --------   任性空白框
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * <p>
     * ========================================================================================================
     */


    public Result oneBtcEachDay(String token)
    {
        Member member = (Member) redisUtil.get(token);
        WalletHistory walletHistory = new WalletHistory();
        List<WalletDtoLine> lines = new ArrayList<>();
        try
        {
            Wallet wallet = PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.T);
            WalletDtoLine dto = new WalletDtoLine();
            dto.setPrice(wallet.getTotalPrice()).setTime(new Date()).setStamp(System.currentTimeMillis());
            lines.add(dto);
        } catch (Exception e)
        {
            e.printStackTrace();
        }

        walletHistory.setMemberId(member.getMemberId()).setType(ProConst.WalletType.T.getCode());
        List<WalletDtoLine> dtoList = walletHistoryService.getBaseMapper().getLastDateHistory(walletHistory);
        for (WalletDtoLine entity : dtoList)
        {
            entity.setStamp(entity.getStamp() * 1000);
            lines.add(entity);
        }
        Map<String, Object> map = new HashMap<>();
        //TODO 获取差值
        map.put("subValue", "9999");

        map.put("lines", lines);
        return Result.success("距离每日一BTC信息", map);
    }





    public Result huobiTicket()
    {
        return Result.success(redisUtil.lGet(Constant.TICKET_HUOBI, 0, -1));
    }

    /**
     * 联系客服
     *
     * @return
     */
    public Result contact()
    {
        return Result.success("联系客服", contactService.getOne(new QueryWrapper<>()).getPhone());
    }

    public Result media(Page page, String type)
    {

        Media media = new Media();
        media.setType(type).setDel("N");

        return Result.success(mediaService.page(page, new QueryWrapper<>(media).orderByDesc(Constant.CREATE_TIME)));
    }

    public Result myPool(String token) throws Exception
    {
        Member member = (Member) redisUtil.get(token);

//        ApiMyPoolDto<List<Kline>> dto = new ApiMyPoolDto();
        ApiMyPoolDto<KlineResponse<Kline>> dto = new ApiMyPoolDto();

        TicketBo btcBo = (TicketBo) redisUtil.lGetIndex(Constant.TICKET_HUOBI, 0);
        dto.setBtcUsdt(btcBo != null ? btcBo.getClose() : BigDecimal.ZERO);

        Wallet walletT = PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.T);

        dto.setPower(walletT.getTotalPrice());

        Wallet walletBtc = PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.BTC);
        dto.setTotalPrice(walletBtc.getTotalPrice());

        //TODO: 日收益
        dto.setUsedPrice(getBtcWithdrawalPrice(member)).setCountPrice(getBtcHeapPrice(member)).setCurrentProfit(BigDecimal.ZERO);
//        dto.setChart((KlineResponse<Kline>) redisUtil.get(Constant.BTC_KLINE));
        return Result.success("我的矿池", dto);

    }


    public Result cashflow(String token, Page page, String type) throws Exception
    {
        Member member = (Member) redisUtil.get(token);
        Cashflow cashflow = new Cashflow();
        cashflow.setDel("N").setMemberId(member.getMemberId());
        String msg = "算力明细记录";
        Map<String, Object> map = new HashMap<>();

        ApiRecordDto<IPage> apiRecordDto = new ApiRecordDto<>();
        /**
         * 算力明细记录
         */
        if (StrUtil.equals(type, "POWER"))
        {
            //总额
            apiRecordDto.setTotalPrice(PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.T).getTotalPrice());
            cashflow.setFlowCoin(ProConst.WalletType.T.getCode());
        }
        //收益记录
        if (StrUtil.equals(type, "PROFIT"))
        {
            msg = "收益记录";
            apiRecordDto.setTotalPrice(PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.BTC).getTotalPrice());

            //累计挖矿
            apiRecordDto.setCountPrice(getBtcHeapPrice(member));
            //已提数量
            apiRecordDto.setUsedPrice(getBtcWithdrawalPrice(member));

            cashflow.setFlowCoin(ProConst.WalletType.BTC.getCode());
        }
        if (StrUtil.equals(type, "POINT"))
        {
            msg = "积分记录";
            apiRecordDto.setTotalPrice(PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.POINT).getTotalPrice());
            cashflow.setFlowCoin(ProConst.WalletType.POINT.getCode());
        }
        if (StrUtil.equals(type, "CONVERT_POINT"))
        {
            msg = "划转记录";
            cashflow.setFlowType(type);
        }

        IPage dtoList = geCashList(cashflow, page, type, msg);
        apiRecordDto.setRecords(dtoList).setPageType(type);
        return Result.success(msg, apiRecordDto);
    }

    private IPage geCashList(Cashflow cashflow, Page page, String type, String msg)
    {
        IPage<Cashflow> list = cashflowService.page(page, new QueryWrapper<>(cashflow).orderByDesc(Constant.CREATE_TIME));
        List<Cashflow> tmpList = list.getRecords();
        IPage<ApiCashflowDto> dtoList = new Page<>();
        dtoList.setRecords(new ArrayList<>(tmpList.size()));
        tmpList.stream().forEach(entity ->
        {
            ApiCashflowDto dto = new ApiCashflowDto();
            BeanUtil.copyProperties(entity, dto);
            dto.setCreateTimeStamp(entity.getCreateTime().getTime())
                    .setPageType(type)
                    .setSymbol(entity.getFlowOp().intValue() == ProConst.CashFlowOpEnum.FLOW_IN.getCode().intValue() ? "+" : "-");
            for (ProConst.CashFlowTypeEnum e : ProConst.CashFlowTypeEnum.values())
            {
                if (StrUtil.equals(e.getCode(), entity.getFlowType()))
                {
                    dto.setName(e.getValue());
                }
            }
            if (type.equals(ProConst.CashFlowTypeEnum.CONVERT_POINT.getCode()))
            {
                dto.setName(entity.getItemName());
            }
            dtoList.getRecords().add(dto);
        });
        dtoList.setTotal(list.getTotal()).setCurrent(list.getCurrent()).setPages(list.getPages()).setSize(list.getSize());
        return dtoList;
    }


    /**
     * 用户钱包地址
     *
     * @param token
     * @param type
     * @return
     */
    public Result coin(String token, String type, ApiCoinDto dto)
    {

        Member member = (Member) redisUtil.get(token);

        if (StrUtil.equals(type, "ADD"))
        {
            Coin chainCoin = new Coin();
            BeanUtil.copyProperties(dto, chainCoin);
            chainCoin.setMemberId(member.getMemberId())
                    .setCreateUser(member.getMemberId());
            coinService.save(chainCoin);
            return Result.success("添加成功");
        }
        if (StrUtil.equals(type, "DEL"))
        {
            Coin chainCoin = coinService.getById(dto.getChainCoinId());
            chainCoin.setDel("Y").setUpdateUser(member.getMemberId());
            coinService.updateById(chainCoin);
            return Result.success("删除成功");
        }
        return null;
    }


    public Result coinList(String token, Page page)
    {
        Member member = (Member) redisUtil.get(token);
        Coin chainCoin = new Coin();
        chainCoin.setDel("N").setMemberId(member.getMemberId());
        IPage<Coin> list = coinService.page(page, new QueryWrapper<>(chainCoin).orderByDesc(Constant.CREATE_TIME));
        List<Coin> tmpList = list.getRecords();
        IPage<ApiCoinDto> dtoList = new Page<>();
        dtoList.setRecords(new ArrayList<>(tmpList.size()));
        tmpList.stream().forEach(entity ->
        {
            //用户是否已经完成该任务或任务已过期
            ApiCoinDto dto = new ApiCoinDto();
            BeanUtil.copyProperties(entity, dto);
            dtoList.getRecords().add(dto);
        });
        dtoList.setTotal(list.getTotal()).setCurrent(list.getCurrent()).setPages(list.getPages()).setSize(list.getSize());
        return Result.success("列表", dtoList);
    }


    /**
     * 充币/提幣 记录
     *
     * @param token
     * @param type
     * @param page
     * @return
     */
    public Result coinRecord(String token, String type, Page page)
    {
        Member member = (Member) redisUtil.get(token);
//        if (StrUtil.equals(type, "R")) {
//            ChainRecharge chainRechargeQ = new ChainRecharge();
//            chainRechargeQ.setMemberId(member.getMemberId()).setDel("N");
//            //拉取列表
//            IPage<ChainRecharge> list = chainRechargeService.page(page, new QueryWrapper<>(chainRechargeQ).orderByDesc(Constant.CREATE_TIME));
//            List<ChainRecharge> tmpList = list.getRecords();
//            IPage<ApiChainDto> dtoList = new Page<>();
//            dtoList.setRecords(new ArrayList<>(tmpList.size()));
//            tmpList.stream().forEach(entity -> {
//                ApiChainDto dto = new ApiChainDto();
//                dto.setId(entity.getChainRechargeId())
//                        .setTime(entity.getCreateTime())
//                        .setRemark(entity.getRemark())
//                        .setType("充幣")
//                        .setTimeStamp(entity.getCreateTime().getTime())
//                        .setPrice(entity.getActualPrice())
//                        .setActualPrice(entity.getActualPrice())
//                        .setAddress(entity.getFromAddress());
//                if (StrUtil.equals(entity.getStatus(), "Y")) {
//                    dto.setStatus("已完成");
//                } else {
//                    dto.setStatus("未完成");
//                }
//
//                dtoList.getRecords().add(dto);
//            });
//            dtoList.setTotal(list.getTotal()).setCurrent(list.getCurrent()).setPages(list.getPages()).setSize(list.getSize());
//            return Result.success("充币记录", dtoList);
//        }
        if (StrUtil.equals(type, "W"))
        {
            Withdraw chainWithdrawQ = new Withdraw();
            chainWithdrawQ.setMemberId(member.getMemberId()).setDel("N");
            //拉取列表
            IPage<Withdraw> list = withdrawService.page(page, new QueryWrapper<>(chainWithdrawQ).orderByDesc(Constant.CREATE_TIME));
            List<Withdraw> tmpList = list.getRecords();
            IPage<ApiChainDto> dtoList = new Page<>();
            dtoList.setRecords(new ArrayList<>(tmpList.size()));
            tmpList.stream().forEach(entity ->
            {
                ApiChainDto dto = new ApiChainDto();
                BeanUtil.copyProperties(entity, dto);
                dto.setId(entity.getWithdrawId())
                        .setType("提币")
                        .setRemark(entity.getRemark())
                        .setAddress(entity.getToAddress())
                        .setTime(entity.getCreateTime())
                        .setTimeStamp(entity.getCreateTime().getTime());
                if (StrUtil.equals(entity.getStatus(), ProConst.WithdrawStatusEnum.PASS.getCode()))
                {
                    dto.setStatus("提币成功");
                }
                else if (StrUtil.equals(entity.getStatus(), ProConst.WithdrawStatusEnum.COIN.getCode()))
                {
                    dto.setStatus("提币中");
                }
                else if (StrUtil.equals(entity.getStatus(), ProConst.WithdrawStatusEnum.CHECK.getCode()))
                {
                    dto.setStatus("审核中");
                }
                else
                {
                    dto.setStatus("提币失败");
                }

                dtoList.getRecords().add(dto);
            });
            dtoList.setTotal(list.getTotal()).setCurrent(list.getCurrent()).setPages(list.getPages()).setSize(list.getSize());
            return Result.success("提币记录", dtoList);
        }
        return Result.fail(ApiStatus.BAD_REQUEST.code(), ApiStatus.BAD_REQUEST.msg());
    }

    /**
     * 充币/提幣 详情
     *
     * @param token
     * @param type
     * @param id
     * @return
     */
    public Result coinRecordDetail(String token, String type, Long id)
    {
        Member member = (Member) redisUtil.get(token);
//        if (StrUtil.equals(type, "R")) {
//            ChainRecharge entity = chainRechargeService.getById(id);
//            if (entity == null) {
//                return Result.fail(ApiStatus.NOT_FOUND.code(), "未找到");
//            }
//            if (entity != null && entity.getMemberId().longValue() != member.getMemberId().longValue()) {
//                return Result.fail(ApiStatus.NOT_FOUND.code(), "未找到");
//            }
//            ApiChainDto dto = new ApiChainDto();
//            dto.setId(entity.getChainRechargeId())
//                    .setTime(entity.getCreateTime())
//                    .setType("充幣")
//                    .setRemark(entity.getRemark())
//                    .setPrice(entity.getPrice())
//                    .setActualPrice(entity.getActualPrice())
//                    .setTimeStamp(entity.getCreateTime().getTime())
//                    .setAddress(entity.getFromAddress());
//            if (StrUtil.equals(entity.getStatus(), "Y")) {
//                dto.setStatus("已完成");
//            } else {
//                dto.setStatus("未完成");
//            }
//            return Result.success("充币详情", dto);
//        }
        if (StrUtil.equals(type, "W"))
        {
            Withdraw entity = withdrawService.getById(id);
            if (entity == null)
            {
                return Result.fail(ApiStatus.NOT_FOUND.code(), "未找到");
            }
            if (entity != null && entity.getMemberId().longValue() != member.getMemberId().longValue())
            {
                return Result.fail(ApiStatus.NOT_FOUND.code(), "未找到");
            }
            ApiChainDto dto = new ApiChainDto();
            dto.setId(entity.getWithdrawId())
                    .setTime(entity.getCreateTime())
                    .setType("提币")
                    .setTimeStamp(entity.getCreateTime().getTime())
                    .setPrice(entity.getPrice())
                    .setFee(entity.getFee())
                    .setRemark(entity.getRemark())
                    .setActualPrice(entity.getActualPrice())
                    .setAddress(entity.getToAddress());
            if (StrUtil.equals(entity.getStatus(), ProConst.WithdrawStatusEnum.PASS.getCode()))
            {
                dto.setStatus("提币成功");
            }
            else if (StrUtil.equals(entity.getStatus(), ProConst.WithdrawStatusEnum.COIN.getCode()))
            {
                dto.setStatus("提币中");
            }
            else if (StrUtil.equals(entity.getStatus(), ProConst.WithdrawStatusEnum.CHECK.getCode()))
            {
                dto.setStatus("审核中");
            }
            else
            {
                dto.setStatus("提币失败");
            }
            return Result.success("提币详情", dto);
        }
        return Result.fail(ApiStatus.BAD_REQUEST.code(), ApiStatus.BAD_REQUEST.msg());
    }

    /**
     * 提币
     *
     * @param token
     * @param apiWithdrawCoinVo
     * @return
     */
    @Transactional(rollbackFor = Exception.class)
    public Result withdrawCoin(String token, ApiWithdrawCoinVo apiWithdrawCoinVo) throws Exception
    {
        Member member = (Member) redisUtil.get(token);
        String strDfsFee = PromotionFactory.me().getSysConfigValueByCode(Constant.BTC_FEE);
        BigDecimal fee = new BigDecimal(strDfsFee);

        Wallet wallet = PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.BTC);


        if (wallet.getTotalPrice().compareTo(apiWithdrawCoinVo.getPrice()) == -1)
        {
            return Result.fail(ApiStatus.WALLET_LESS.code(), ApiStatus.WALLET_LESS.msg());
        }

        if (!isTruePayPwd(member, apiWithdrawCoinVo.getPayPwd()))
        {
            return Result.fail(ApiStatus.ERROR_PAY_PWD.code(), ApiStatus.ERROR_PAY_PWD.msg());
        }

        BigDecimal minBtcNum = new BigDecimal(PromotionFactory.me().getSysConfigValueByCode(Constant.MIN_BTC_NUM));
        if (apiWithdrawCoinVo.getPrice().compareTo(minBtcNum) == -1)
        {
            return Result.fail(ApiStatus.MIN_BTC.code(), ApiStatus.MIN_BTC.msg());
        }


        Withdraw chainWithdraw = new Withdraw();
        String orderNo = cn.stylefeng.guns.modular.base.util.RandomUtil.code("CW");
        BeanUtil.copyProperties(apiWithdrawCoinVo, chainWithdraw);
        BigDecimal actualPrice = apiWithdrawCoinVo.getPrice().subtract(fee);
        chainWithdraw.setMemberId(member.getMemberId())
                .setOrderNo(orderNo)
                .setPrice(apiWithdrawCoinVo.getPrice())
                .setActualPrice(actualPrice)
                .setFee(fee)
                .setStatus(ProConst.WithdrawStatusEnum.CHECK.getCode())
                .setCreateUser(member.getMemberId());
        withdrawService.save(chainWithdraw);

        /**
         * 流水记录
         */
        PromotionFactory.me().saveCashflow(member.getMemberId(), ProConst.WalletType.BTC, ProConst.CashFlowOpEnum.FLOW_OUT, ProConst.CashFlowTypeEnum.WITHDRAW
                , apiWithdrawCoinVo.getPrice(), ProConst.CoinType.BTC, actualPrice, ProConst.CoinType.BTC, fee, ProConst.CoinType.BTC
                , orderNo, "fin_withdraw", null, null, wallet.getTotalPrice(), wallet.getTotalPrice().subtract(apiWithdrawCoinVo.getPrice())
                , member.getMemberId(), Constant.SYS_PLATFORM);

        /**
         * 减钱包余额
         */
        PromotionFactory.me().saveWalletHistory(wallet);

        wallet.setTotalPrice(wallet.getTotalPrice().subtract(apiWithdrawCoinVo.getPrice()))
                .setUpdateUser(member.getMemberId());
        walletService.updateById(wallet);

        return Result.success("提币审核中");
    }

    /**
     * 交易密码正确
     *
     * @param member
     * @param payPassword
     * @return
     */
    private boolean isTruePayPwd(Member member, String payPassword)
    {
        String md5Pwd = ShiroKit.md5(payPassword, member.getPaySalt());
        return StrUtil.equals(member.getPayPassword(), md5Pwd) ? true : false;
    }


    /**
     * （查询）收货地址
     *
     * @param token
     * @return
     */
    public Result getShipping(String token)
    {
        Member member = (Member) redisUtil.get(token);
        Shipping shippingQ = new Shipping();
        shippingQ.setMemberId(member.getMemberId()).setDel("N");
        Shipping shippingR = shippingService.getOne(new QueryWrapper<>(shippingQ));
        ApiShippingVo vo = new ApiShippingVo();
        BeanUtil.copyProperties(shippingR, vo);
        return Result.success("收货信息", vo);
    }

    /**
     * (增删改)收货地址
     *
     * @param token
     * @param shippingVo
     * @return
     */
    public Result shipping(String token, ApiShippingVo shippingVo, String type)
    {
        Member member = (Member) redisUtil.get(token);
        if (StrUtil.equals(type, "ADD"))
        {
            Shipping shippingQ = new Shipping();
            shippingQ.setMemberId(member.getMemberId()).setDel("N");
            Shipping shippingR = shippingService.getOne(new QueryWrapper<>(shippingQ));
            if (shippingR != null)
            {
                Result.fail(ApiStatus.MANY_SHIPPING.code(), ApiStatus.MANY_SHIPPING.msg());
            }
            Shipping shipping = new Shipping();
            BeanUtil.copyProperties(shippingVo, shipping);
            shipping.setMemberId(member.getMemberId()).setCreateUser(member.getMemberId());
            shippingService.save(shipping);
            return Result.success("已保存收货地址");
        }
        else if (StrUtil.equals(type, "EDIT"))
        {
            Shipping shipping = new Shipping();
            BeanUtil.copyProperties(shippingVo, shipping);
            shipping.setMemberId(member.getMemberId()).setUpdateUser(member.getMemberId());
            shippingService.updateById(shipping);
            return Result.success("已修改收货地址");
        }
        if (StrUtil.equals(type, "DEL"))
        {
            Shipping shipping = shippingService.getById(shippingVo.getShippingId());
            shipping.setDel("Y").setUpdateUser(member.getMemberId());
            shippingService.updateById(shipping);
            return Result.success("已删除收货地址");
        }
        return Result.fail(ApiStatus.BAD_REQUEST.code(), ApiStatus.BAD_REQUEST.msg());
    }


    public Result withdrawPage(String token) throws Exception
    {
        Member member = (Member) redisUtil.get(token);
        Map<String, Object> map = new HashMap<>();
        map.put("price", PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.BTC).getTotalPrice());
        map.put("fee", PromotionFactory.me().getSysConfigValueByCode(Constant.BTC_FEE));
        map.put("minBtc", PromotionFactory.me().getSysConfigValueByCode(Constant.MIN_BTC_NUM));
        return Result.success("提币页面信息", map);
    }

    /**
     * 用户信息
     *
     * @param token
     * @return
     */
    public Result info(String token) throws Exception
    {
        Member member = (Member) redisUtil.get(token);

        ApiUserInfoDto dto = new ApiUserInfoDto();

        BeanUtil.copyProperties(member, dto);

        if (member.getType() != null)
        {
            for (ProConst.MemberType e : ProConst.MemberType.values())
            {
                if (e.code().equals(member.getType()))
                {
                    dto.setTypeValue(e.value());
                }
            }
        }
        dto.setHead(PromotionFactory.me().getSysConfigValueByCode(Constant.URL) + dto.getHead());
        dto.setInviteLink(PromotionFactory.me().getSysConfigValueByCode(Constant.H5_URL) + "/reg/" + member.getInviteCode());

        String province = PromotionFactory.me().getRegion(member.getProvinceId(), ProConst.RegionLevelType.PROVINCE.getCode()).getName();
        String city = PromotionFactory.me().getRegion(member.getCityId(), ProConst.RegionLevelType.CITY.getCode()).getName();
        String area = PromotionFactory.me().getRegion(member.getAreaId(), ProConst.RegionLevelType.AREA.getCode()).getName();


        StringBuffer proxy = new StringBuffer();

        if (StrUtil.equals(member.getProvinceProxy(), YES))
        {
            Region region = PromotionFactory.me().getRegion(member.getProvinceProxyId(), ProConst.RegionLevelType.PROVINCE.getCode());
            proxy.append(" ").append(region.getName()).append("代理");
        }
        if (StrUtil.equals(member.getCityProxy(), YES))
        {
            Region region = PromotionFactory.me().getRegion(member.getCityProxyId(), ProConst.RegionLevelType.CITY.getCode());
            proxy.append(" ").append(region.getName()).append("代理");
        }
        if (StrUtil.equals(member.getAreaIdProxy(), YES))
        {
            Region region = PromotionFactory.me().getRegion(member.getAreaIdProxyId(), ProConst.RegionLevelType.AREA.getCode());
            proxy.append(" ").append(region.getName()).append("代理");
        }

        if (StrUtil.equals(NO, member.getProvinceProxy()) && StrUtil.equals(NO, member.getCityProxy()) && StrUtil.equals(NO, member.getAreaIdProxy()))
        {
            proxy.append("无");
        }

        StringBuffer core = new StringBuffer();
        if (StrUtil.equals(member.getDirector(), YES))
        {
            core.append(" ").append("理事");
        }
        if (StrUtil.equals(member.getCooperation(), YES))
        {
            core.append(" ").append("合创");
        }
        if (StrUtil.equals(member.getDirector(), NO) && StrUtil.equals(member.getCooperation(), NO))
        {
            core.append("无");
        }
        dto.setProxy(proxy.toString()).setCore(core.toString());
        StringBuffer address = new StringBuffer();
        address.append(province)
                .append(city)
                .append(area);
        dto.setAddress(address.toString());

        return Result.success("用户信息", dto);
    }




    public Result editInfo(String token, ApiUserInfoDto dto)
    {
        Member member = (Member) redisUtil.get(token);

//        if (StrUtil.isNotBlank(dto.getNickName())) {
//            member.setNickName(dto.getNickName()).setUpdateUser(member.getMemberId());
//            memberService.updateById(member);
//            return Result.success("昵称已更新");
//        }
        if (StrUtil.isNotBlank(dto.getHead()))
        {
            member.setHead(dto.getHead()).setUpdateUser(member.getMemberId());
            memberService.updateById(member);
            return Result.success("头像已更新");
        }
        return Result.fail(ApiStatus.BAD_REQUEST.code());
    }




    private boolean isHaveTheLevel(Member member, Region region)
    {

        /**
         *
         * 是否省代理（0：否 1：是） provinceProxy;
         * 是否市代理（0：否 1：是） cityProxy
         * 是否区/县代理（0：否 1：是 areaIdProxy
         *
         */
        if (region.getLevelType().longValue() == 1 && member.getProvinceProxy().equals(YES))
        {
            return true;
        }
        if (region.getLevelType().longValue() == 2 && member.getCityProxy().equals(YES))
        {
            return true;
        }
        if (region.getLevelType().longValue() == 3 && member.getAreaIdProxy().equals(YES))
        {
            return true;
        }
        return false;

    }


    /**
     * 我的推广
     *
     * @param token
     * @return
     */
    public Result myTeam(String token)
    {
        Member member = (Member) redisUtil.get(token);
        Map<String, Object> map = new HashMap<>();
        map.put("performance", getCurrentPerformance(member.getMemberId()));
        List<ApiTeamMemberDto> list = memberService.getBaseMapper().getDirectMembersByMemberId(member);
        list.stream().forEach(entity -> entity.setTypeValue(getMemberTypeValue(entity.getType())).setRegisterTimeStamp(entity.getRegisterTime().getTime()));
        map.put("teams", list);
        return Result.success(map);
    }

    private BigDecimal getCurrentPerformance(Long memberId)
    {
        return cashflowService.getBaseMapper().getCurrentPerformance(memberId);
    }

    private String getMemberTypeValue(String type)
    {
        for (ProConst.MemberType m : ProConst.MemberType.values())
        {
            if (StrUtil.equals(type, m.code()))
            {
                return m.value();
            }
        }
        return "未知等级";
    }



    /**
     * btc已提数量
     *
     * @param member
     * @return
     */
    private BigDecimal getBtcWithdrawalPrice(Member member)
    {
        return cashflowService.getBaseMapper().getBtcWithdrawalPrice(member.getMemberId());
    }

    /**
     * 获取累积BTC收益
     *
     * @param member
     * @return
     */
    private BigDecimal getBtcHeapPrice(Member member)
    {
        return cashflowService.getBaseMapper().getBtcHeapPrice(member.getMemberId());
    }


    /**
     * 判断是否该身份
     */
    private boolean isThisRole(Member member, String type)
    {
        //合创、理事
        if (StrUtil.equals(type, ProConst.TeamworkType.COOPERATION.getCode()) && StrUtil.equals(member.getCooperation(), YES))
        {
            return true;
        }
        if (StrUtil.equals(type, ProConst.TeamworkType.DIRECTOR.getCode()) && StrUtil.equals(member.getDirector(), YES))
        {
            return true;
        }
        return false;
    }



    public Result phoneCode()
    {
        PhoneCode phoneCode = new PhoneCode();
        phoneCode.setDel("N");
        return Result.success(phoneCodeService.list(new QueryWrapper<>(phoneCode).orderByDesc(Constant.CREATE_TIME)));
    }


    /**
     * 返利直推收益
     */
//    @Transactional(rollbackFor = Exception.class)
//    public void profit()
//    {
//        //获取当天购买流水记录
//        List<Cashflow> cashflowList = cashflowService.getBaseMapper().getCurrentBuyPowerCashflow();
//        //向上级返利
//        cashflowList.forEach(entity ->
//        {
//            Member member = PromotionFactory.me().getMember(entity.getMemberId());
//            //获取直推人
//            Member directMember = PromotionFactory.me().getMember(member.getRefereeId());
//            try
//            {
//                topReturnDirect(entity, directMember);
//            } catch (Exception e)
//            {
//                e.printStackTrace();
//            }
//        });
//
//    }


//    /**
//     * 向上级直推返利
//     *
//     * @param cashflow
//     * @param directMember
//     * @throws Exception
//     */
//    @Transactional(rollbackFor = Exception.class)
//    public void topReturnDirect(Cashflow cashflow, Member directMember) throws Exception
//    {
//
//        //获取直推人钱包
//        Wallet wallet = PromotionFactory.me().getWallet(directMember.getMemberId(), ProConst.WalletType.T);
//        //保存历史记录
//        PromotionFactory.me().saveWalletHistory(wallet);
//
//
//        //直推比例(根据身份获取最大直推比例) ，保留4位
//        BigDecimal direction = getProfitByType(directMember, ProConst.ProfitType.DIRECT).divide(new BigDecimal(100), 4, RoundingMode.DOWN);
//        if (direction.compareTo(BigDecimal.ZERO) == 0)
//        {
//            return;
//        }
//        //直推金额
//        BigDecimal directPrice = direction.multiply(cashflow.getFlowPrice());
//
//        //加入钱包内
//        int row = walletService.getBaseMapper().updateWallet(wallet.getWalletId(), directPrice, wallet.getVersion());
//        if (row <= 0)
//        {
//            Map<String, Object> map = new HashMap<>();
//            map.put("cashflow", cashflow.toString());
//            map.put("directMember", directMember.toString());
//            map.put("direction", direction);
//            JSONObject jsonObject = new JSONObject(map);
//            throw new WalletException("profit.directProfit.topReturnDirect", "向上级直推返利异常", jsonObject);
//        }
//
//        //生成流水记录
//        PromotionFactory.me().saveCashflow(directMember.getMemberId(), ProConst.WalletType.T, ProConst.CashFlowOpEnum.FLOW_IN, ProConst.CashFlowTypeEnum.DiRECT_PROFIT
//                , directPrice, ProConst.CoinType.T, directPrice, ProConst.CoinType.T, BigDecimal.ZERO, ProConst.CoinType.T, null, null, "Y", null
//                , wallet.getTotalPrice(), wallet.getTotalPrice().add(directPrice), cashflow.getMemberId(), directMember.getMemberId());
//
//
//    }




//    /**
//     * 极差返利
//     */
//    @Transactional(rollbackFor = Exception.class)
//    public void dif() throws Exception
//    {
//
//        log.debug("####################################################################");
//        log.debug("#                                                                  #");
//        log.debug("#                                                                  #");
//        log.debug("#                                                                  #");
//        log.debug("#                       极差返利   -start                          #");
//        log.debug("#                                                                  #");
//        log.debug("#                                                                  #");
//        log.debug("#                                                                  #");
//        log.debug("####################################################################");
//
//
//        /**
//         * step 1:获取矿主、大矿主、超级矿主用户列表
//         */
//        Member memberQ = new Member();
//        memberQ.setDel("N").setStatus("Y");
//        List<Member> memberList = memberService.list(new QueryWrapper<>(memberQ).in("type", ProConst.MemberType.MINE.code(), ProConst.MemberType.BIG_MINE.code(), ProConst.MemberType.SUPER_MINE.code()).orderByAsc(Constant.CREATE_TIME));
//        if (memberList.size() == 0)
//        {
//            return;
//        }
//
//        //遍历用户进行团队返利
//        for (Member member : memberList)
//        {
//            /**
//             * step 2：获取用户团队新增业绩 的所有流水记录
//             */
//            List<Cashflow> teamCashFlows = getCurrentPerformanceCashList(member.getMemberId());
//            if (teamCashFlows.size() == 0)
//            {
//                continue;
//            }
//            /**
//             * step 3: 筛选出 符合团队返利的流水记录
//             *     生成流水记录的用户的上级关系链上 与 指定返利用户的身份有多少个，并且本人排在多少位：
//             *      a.线上只有本人一个身份，且为以本人为截止点，之前的最高身份,流水直接拿，团队返利
//             *      b.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第一位，流水直接拿，团队返利
//             *      c.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第二到第四位，平级，
//             *      d.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第五位开外，无，
//             *      f.线上有多个与本人一样的身份，且为以本人为截止点，之前存在比我高的身份,无，
//             */
//            dealTeamFlows(member, teamCashFlows);
//
//
//        }
//
//
//        log.debug("####################################################################");
//        log.debug("#                                                                  #");
//        log.debug("#                                                                  #");
//        log.debug("#                                                                  #");
//        log.debug("#                       极差返利   -end                             #");
//        log.debug("#                                                                  #");
//        log.debug("#                                                                  #");
//        log.debug("#                                                                  #");
//        log.debug("####################################################################");
//
//
//    }

    /**
     * step 3: 筛选出 符合团队返利的流水记录
     * 生成流水记录的用户的上级关系链上 与 指定返利用户的身份有多少个，并且本人排在多少位：
     * a.线上只有本人一个身份，且为以本人为截止点，之前的最高身份,流水直接拿，团队返利
     * b.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第一位，流水直接拿，团队返利
     * c.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第二到第四位，平级，
     * d.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第五位开外，无，
     * f.线上有多个与本人一样的身份，且为以本人为截止点，之前存在比我高的身份,无，
     */
//    @Transactional(rollbackFor = Exception.class)
//    public void dealTeamFlows(Member member, List<Cashflow> teamCashFlows) throws Exception
//    {
//
//        log.debug("返利用户id:{},phone:{},身份：{}", member.getMemberId(), member.getPhone(), member.getType());
//
//        //设计两个流水集合
//
//        //团队流水集合
//        List<Cashflow> teamCashflowList = new ArrayList<>();
//        //平级流水集合
//        List<Cashflow> sameCashflowList = new ArrayList<>();
//
//        for (Cashflow cashflow : teamCashFlows)
//        {
//            //流水所属用户
//            Member cashflowMember = PromotionFactory.me().getMember(cashflow.getMemberId());
//            //获取用户上级关系链数组
//            String[] pIds = cashflowMember.getParentRefereeId().substring(1).split("/");
//            //获取本人之前的用户列表
//            String[] beforePidsAtMember = beforePidsAtMember(pIds, member.getMemberId());
//            //如果为空的话，说明前面没人
//            if (beforePidsAtMember.length == 0)
//            {
//                //a.线上只有本人一个身份，且为以本人为截止点，之前的最高身份,流水直接拿，团队返利
//                //团队返利流水
//                teamCashflowList.add(cashflow);
//                continue;
//            }
//            else
//            {
//                //a.线上只有本人一个身份，且为以本人为截止点，之前的最高身份,流水直接拿，团队返利
//                //b.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第一位，流水直接拿，团队返利
//                if (beforeLineMyTypeIsHigher(beforePidsAtMember, member))
//                {
//                    ////团队返利流水
//                    teamCashflowList.add(cashflow);
//                }
//                //c.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第二到第四位，平级
//                //d.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第五位开外，无，
//                //f.线上有多个与本人一样的身份，且为以本人为截止点，之前存在比我高的身份,无，
//                if (beforeLineMyTypeIs_2nd_4th(beforePidsAtMember, member))
//                {
//                    sameCashflowList.add(cashflow);
//                }
//
//            }
//        }
//        //团队流水集合 返利
//        if (teamCashflowList.size() > 0)
//        {
//            log.debug("团队流水返利,流水数量：{},返利用户：{}：{}", teamCashflowList.size(), member.getMemberId(), member.getPhone());
//            teamAndSameProfit(teamCashflowList, member, ProConst.ProfitType.TEAM);
//        }
//        //平级流水集合 返利
//        if (sameCashflowList.size() > 0)
//        {
//            log.debug("平级流水返利,流水数量：{},返利用户：{}：{}", sameCashflowList.size(), member.getMemberId(), member.getPhone());
//            teamAndSameProfit(sameCashflowList, member, ProConst.ProfitType.SAME);
//        }
//
//
//    }

    /**
     * 团队 和 平级 返利
     *
     * @param teamCashflowList
     * @param member
     */
//    private void teamAndSameProfit(List<Cashflow> teamCashflowList, Member member, ProConst.ProfitType type) throws Exception
//    {
//        //step 1：获取用户最大团队返利
//        BigDecimal profit = getProfitByType(member, type).divide(new BigDecimal(100), 4, RoundingMode.DOWN);
//        Wallet wallet = PromotionFactory.me().getWallet(member.getMemberId(), ProConst.WalletType.T);
//        PromotionFactory.me().saveWalletHistory(wallet);
//        for (Cashflow cashflow : teamCashflowList)
//        {
//            //返利收益
//            BigDecimal teamPrice = cashflow.getFlowPrice().multiply(profit);
//            //流水生成
//            PromotionFactory.me().saveCashflow(member.getMemberId(), ProConst.WalletType.T, ProConst.CashFlowOpEnum.FLOW_IN, type.getCode(),
//                    teamPrice, ProConst.CoinType.T, teamPrice, ProConst.CoinType.T, BigDecimal.ZERO, ProConst.CoinType.T,
//                    null, null, "Y", null,
//                    wallet.getTotalPrice(), wallet.getTotalPrice().add(teamPrice), cashflow.getMemberId(), member.getMemberId());
//            wallet.setTotalPrice(wallet.getTotalPrice().add(teamPrice));
//        }
//        wallet.setUpdateUser(member.getMemberId());
//        walletService.updateById(wallet);
//    }


    /**
     * c.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第二到第四位，平级
     * d.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第五位开外，无，
     * f.线上有多个与本人一样的身份，且为以本人为截止点，之前存在比我高的身份,无
     *
     * @param beforePidsAtMember
     * @param member
     * @return
     */
//    private boolean beforeLineMyTypeIs_2nd_4th(String[] beforePidsAtMember, Member member)
//    {
//        //排在第二到第四位,即，前面可以存在小于3人的同身份
//        int count = 0;
//        for (int i = 0; i < beforePidsAtMember.length; i++)
//        {
//            Member entity = PromotionFactory.me().getMember(Long.valueOf(beforePidsAtMember[i]));
//            //前面人的身份如果有一个高于本人，那就没得返
//            if (Long.valueOf(entity.getType()).intValue() > Long.valueOf(member.getType()).intValue())
//            {
//                return false;
//            }
//            //前面人的身份如果有小于3人
//            if (Long.valueOf(entity.getType()).intValue() == Long.valueOf(member.getType()).intValue())
//            {
//                count++;
//            }
//        }
//        if (count <= 3)
//        {
//            return true;
//        }
//        return false;
//    }

    /**
     * a.线上只有本人一个身份，且为以本人为截止点，之前的最高身份,流水直接拿，团队返利
     * b.线上有多个与本人一样的身份，且为以本人为截止点，之前的最高身份,查看排序，排在第一位，流水直接拿，团队返利
     *
     * @param beforePidsAtMember
     * @param member
     * @return
     */
//    private boolean beforeLineMyTypeIsHigher(String[] beforePidsAtMember, Member member)
//    {
//
//        for (int i = 0; i < beforePidsAtMember.length; i++)
//        {
//            Member entity = PromotionFactory.me().getMember(Long.valueOf(beforePidsAtMember[i]));
//            //前面人的身份如果有一个高于或等于本人，那就没得返
//            if (Long.valueOf(entity.getType()).intValue() >= Long.valueOf(member.getType()).intValue())
//            {
//                return false;
//            }
//        }
//        return true;
//    }

    /**
     * 获取指定id之前的数组
     *
     * @param pIds     数组
     * @param memberId 指定id
     * @return
     */
//    private String[] beforePidsAtMember(String[] pIds, Long memberId)
//    {
//        String[] beforeIds = new String[0];
//        for (int i = 0; i < pIds.length; i++)
//        {
//            if (pIds[i].equals(memberId.toString()))
//            {
//                break;
//            }
//            beforeIds[i] = pIds[i];
//        }
//        return beforeIds;
//    }


    /**
     * 获取用户团队新增业绩 的所有流水记录
     *
     * @param
     * @return
     */
//    private List<Cashflow> getCurrentPerformanceCashList(Long memberId)
//    {
//        return cashflowService.getBaseMapper().getCurrentPerformanceCashList(memberId);
//    }



    public Result myPoolBtcUsdt()
    {
        return Result.success("币价", redisUtil.lGetIndex(Constant.TICKET_HUOBI, 0));
    }

    public Result myPoolChart()
    {
        return Result.success("波形图", redisUtil.get(Constant.BTC_KLINE));
    }




    //首页汇总
    public Map getSummary()
    {


        Map<String, Object> map = new HashMap<>();

        map.put("totalPower", walletService.getBaseMapper().getSummary(ProConst.WalletType.T.getCode()));
        map.put("totalBtc", walletService.getBaseMapper().getSummary(ProConst.WalletType.BTC.getCode()));

        //平台总提现
        map.put("totalWithdraw", withdrawService.getBaseMapper().getSummary());

        map.put("todayPower", cashflowService.getBaseMapper().getTodayNewPower());
        map.put("todayBtc", cashflowService.getBaseMapper().getTodayBtc());
        map.put("todayWithdraw", withdrawService.getBaseMapper().getSummaryToday());

        return map;

    }
}




