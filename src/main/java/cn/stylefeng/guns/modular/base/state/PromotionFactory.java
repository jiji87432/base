package cn.stylefeng.guns.modular.base.state;

import cn.hutool.core.bean.BeanUtil;
import cn.stylefeng.guns.modular.app.entity.Member;
import cn.stylefeng.guns.modular.app.mapper.MemberMapper;
import cn.stylefeng.guns.modular.base.util.Result;
import cn.stylefeng.guns.modular.bulletin.entity.*;
import cn.stylefeng.guns.modular.bulletin.mapper.*;
import cn.stylefeng.guns.modular.com.entity.Region;
import cn.stylefeng.guns.modular.com.entity.SvcException;
import cn.stylefeng.guns.modular.com.mapper.RegionMapper;
import cn.stylefeng.guns.modular.com.mapper.SvcExceptionMapper;
import cn.stylefeng.guns.modular.fin.entity.Cashflow;
import cn.stylefeng.guns.modular.fin.entity.WalletHistory;
import cn.stylefeng.guns.modular.fin.mapper.CashflowMapper;
import cn.stylefeng.guns.modular.fin.mapper.WalletHistoryMapper;
import cn.stylefeng.guns.modular.meta_data.constant.ConfigMap;
import cn.stylefeng.guns.modular.meta_data.entity.Config;
import cn.stylefeng.guns.modular.meta_data.mapper.ConfigMapper;
import cn.stylefeng.guns.modular.promotion.entity.GatewayDefine;
import cn.stylefeng.guns.modular.promotion.entity.GatewayRecord;
import cn.stylefeng.guns.modular.promotion.entity.Wallet;
import cn.stylefeng.guns.modular.promotion.mapper.GatewayDefineMapper;
import cn.stylefeng.guns.modular.promotion.mapper.GatewayRecordMapper;
import cn.stylefeng.guns.modular.promotion.mapper.WalletMapper;
import cn.stylefeng.roses.core.util.SpringContextHolder;
import cn.stylefeng.roses.core.util.ToolUtil;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.context.annotation.DependsOn;
import org.springframework.stereotype.Component;

import javax.tools.Tool;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Component
@DependsOn("springContextHolder")
public class PromotionFactory implements IPromotionFactory
{


    public static PromotionFactory me()
    {
        return SpringContextHolder.getBean("promotionFactory");
    }


    private MemberMapper appMemberMapper = SpringContextHolder.getBean(MemberMapper.class);


    private ConfigMapper configMapper = SpringContextHolder.getBean(ConfigMapper.class);

    private GatewayRecordMapper gatewayRecordMapper = SpringContextHolder.getBean(GatewayRecordMapper.class);

    private GatewayDefineMapper gatewayDefineMapper = SpringContextHolder.getBean(GatewayDefineMapper.class);


    private WalletMapper walletMapper = SpringContextHolder.getBean(WalletMapper.class);
    private RegionMapper regionMapper = SpringContextHolder.getBean(RegionMapper.class);

    private WalletHistoryMapper walletHistoryMapper = SpringContextHolder.getBean(WalletHistoryMapper.class);

    private CashflowMapper cashflowMapper = SpringContextHolder.getBean(CashflowMapper.class);

    private SvcExceptionMapper svcExceptionMapper = SpringContextHolder.getBean(SvcExceptionMapper.class);


    /***
     *  ---DESC: 弃用========================
     *  ---DESC: 弃用========================
     *  ---DESC: 弃用========================
     *  ---DESC: 弃用========================
     *  ---DESC: 弃用========================
     *  ---DESC: 弃用========================
     *
     * 保存流水记录
     * @param memberId 用户id
     * @param walletType 账户类型（BTC、  T:算力、POINT:积分）
     * @param flowOp 流水方向（1：流入(+)      0 :流出(-) ）
     * @param flowType 流水类型
     *
     * @param flowPrice 流水金额
     * @param flowCoin 流水币种（BTC、  T:算力、POINT:积分）
     * @param actualPrice 实际金额
     * @param actualCoin 实际币种BTC、T:算力、POINT:积分）
     * @param fee 手续费
     * @param feeCoin 手续费币种
     *
     * @param itemCode 流水记录编码(备用）
     * @param itemName 名称（备用）
     * @param status 状态
     * @param remark 备注
     * @param beforePrice 变更前额度
     * @param afterPrice 变更后额度
     */
//    @Deprecated
//    public void saveCashflow(Long memberId,String walletType, Long flowOp,String flowType,
//                             BigDecimal flowPrice,String flowCoin,BigDecimal actualPrice,String actualCoin,BigDecimal fee,String feeCoin,
//                             String itemCode, String itemName,String status,String remark,
//                             BigDecimal beforePrice,BigDecimal afterPrice
//                             ) {
//        Cashflow cashflow = new Cashflow();
//        cashflow.setMemberId(memberId).setWalletType(walletType).setFlowOp(flowOp).setFlowType(flowType)
//                .setFlowPrice(flowPrice).setFlowCoin(flowCoin).setActualPrice(actualPrice).setActualCoin(actualCoin).setFee(fee).setFlowCoin(feeCoin)
//                .setItemCode(itemCode).setItemName(itemName).setStatus(status).setRemark(remark)
//                .setBeforePrice(beforePrice).setBeforePrice(afterPrice)
//                .setCreateUser(memberId);
//        cashflowMapper.insert(cashflow);
//    }

    /***
     * 保存流水记录
     * @param memberId 用户id
     * @param walletType 账户类型（BTC、  T:算力、POINT:积分）
     * @param flowOp 流水方向（1：流入(+)      0 :流出(-) ）
     * @param flowType 流水类型
     *
     * @param flowPrice 流水金额
     * @param flowCoin 流水币种（BTC、  T:算力、POINT:积分）
     * @param actualPrice 实际金额
     * @param actualCoin 实际币种BTC、T:算力、POINT:积分）
     * @param fee 手续费
     * @param feeCoin 手续费币种
     *
     * @param itemCode 流水记录编码(备用）
     * @param itemName 名称（备用）
     * @param status 状态
     * @param remark 备注
     *
     * @param beforePrice 变更前额度
     * @param afterPrice 变更后额度
     * @param fromId 来处
     * @param toId 去向
     */
    public void saveCashflow(Long memberId, ProConst.WalletType walletType, ProConst.CashFlowOpEnum flowOp, ProConst.CashFlowTypeEnum flowType,
                             BigDecimal flowPrice, ProConst.CoinType flowCoin, BigDecimal actualPrice, ProConst.CoinType actualCoin, BigDecimal fee, ProConst.CoinType feeCoin,
                             String itemCode, String itemName, String status, String remark,
                             BigDecimal beforePrice, BigDecimal afterPrice, Long fromId, Long toId
    )
    {
        Cashflow cashflow = new Cashflow();
        cashflow.setMemberId(memberId).setWalletType(walletType.getCode()).setFlowOp(flowOp.getCode()).setFlowType(flowType.getCode())
                .setFlowPrice(flowPrice).setFlowCoin(flowCoin.getCode()).setActualPrice(actualPrice).setActualCoin(actualCoin.getCode()).setFee(fee).setFeeCoin(feeCoin.getCode())
                .setItemCode(itemCode).setItemName(itemName).setStatus(status).setRemark(remark)
                .setBeforePrice(beforePrice).setAfterPrice(afterPrice)
                .setFromId(fromId)
                .setToId(toId)
                .setCreateUser(memberId);
        cashflowMapper.insert(cashflow);
    }

    /***
     * 保存流水记录
     * @param memberId 用户id
     * @param walletType 账户类型（BTC、  T:算力、POINT:积分）
     * @param flowOp 流水方向（1：流入(+)      0 :流出(-) ）
     * @param flowType 流水类型
     *
     * @param flowPrice 流水金额
     * @param flowCoin 流水币种（BTC、  T:算力、POINT:积分）
     * @param actualPrice 实际金额
     * @param actualCoin 实际币种BTC、T:算力、POINT:积分）
     * @param fee 手续费
     * @param feeCoin 手续费币种
     *
     * @param itemCode 流水记录编码(备用）
     * @param itemName 名称（备用）
     * @param status 状态
     * @param remark 备注
     *
     * @param beforePrice 变更前额度
     * @param afterPrice 变更后额度
     * @param fromId 来处
     * @param toId 去向
     */
    public void saveCashflow(Long memberId, ProConst.WalletType walletType, ProConst.CashFlowOpEnum flowOp, String flowType,
                             BigDecimal flowPrice, ProConst.CoinType flowCoin, BigDecimal actualPrice, ProConst.CoinType actualCoin, BigDecimal fee, ProConst.CoinType feeCoin,
                             String itemCode, String itemName, String status, String remark,
                             BigDecimal beforePrice, BigDecimal afterPrice, Long fromId, Long toId
    )
    {
        Cashflow cashflow = new Cashflow();
        cashflow.setMemberId(memberId).setWalletType(walletType.getCode()).setFlowOp(flowOp.getCode()).setFlowType(flowType)
                .setFlowPrice(flowPrice).setFlowCoin(flowCoin.getCode()).setActualPrice(actualPrice).setActualCoin(actualCoin.getCode()).setFee(fee).setFeeCoin(feeCoin.getCode())
                .setItemCode(itemCode).setItemName(itemName).setStatus(status).setRemark(remark)
                .setBeforePrice(beforePrice).setAfterPrice(afterPrice)
                .setFromId(fromId)
                .setToId(toId)
                .setCreateUser(memberId);
        cashflowMapper.insert(cashflow);
    }

 /***
     * 保存流水记录
     * @param memberId 用户id
     * @param walletType 账户类型（BTC、  T:算力、POINT:积分）
     * @param flowOp 流水方向（1：流入(+)      0 :流出(-) ）
     * @param flowType 流水类型
     *
     * @param flowPrice 流水金额
     * @param flowCoin 流水币种（BTC、  T:算力、POINT:积分）
     * @param actualPrice 实际金额
     * @param actualCoin 实际币种BTC、T:算力、POINT:积分）
     * @param fee 手续费
     * @param feeCoin 手续费币种
     *
     * @param itemCode 流水记录编码(备用）
     * @param itemName 名称（备用）
     * @param status 状态
     * @param remark 备注
     *
     * @param beforePrice 变更前额度
     * @param afterPrice 变更后额度
     * @param fromId 来处
     * @param toId 去向
     */
    public void saveCashflow(Long memberId, String walletType, ProConst.CashFlowOpEnum flowOp, String flowType,
                             BigDecimal flowPrice, String flowCoin, BigDecimal actualPrice, String actualCoin, BigDecimal fee, String feeCoin,
                             String itemCode, String itemName, String status, String remark,
                             BigDecimal beforePrice, BigDecimal afterPrice, Long fromId, Long toId
    )
    {
        Cashflow cashflow = new Cashflow();
        cashflow.setMemberId(memberId).setWalletType(walletType).setFlowOp(flowOp.getCode()).setFlowType(flowType)
                .setFlowPrice(flowPrice).setFlowCoin(flowCoin).setActualPrice(actualPrice).setActualCoin(actualCoin).setFee(fee).setFeeCoin(feeCoin)
                .setItemCode(itemCode).setItemName(itemName).setStatus(status).setRemark(remark)
                .setBeforePrice(beforePrice).setAfterPrice(afterPrice)
                .setFromId(fromId)
                .setToId(toId)
                .setCreateUser(memberId);
        cashflowMapper.insert(cashflow);
    }


    /**
     * 保存钱包存储记录
     *
     * @param wallet
     */
    public void saveWalletHistory(Wallet wallet)
    {
        WalletHistory history = new WalletHistory();
        wallet.setCreateTime(new Date());
        wallet.setUpdateTime(new Date());
        BeanUtil.copyProperties(wallet, history);
        walletHistoryMapper.insert(history);
    }


    /**
     * 获取地区数据
     *
     * @param regionId 地区id
     * @param level    层级
     * @return
     */
    public Region getRegion(Long regionId, Long level)
    {
        Region region = new Region();
        region.setRegionId(regionId).setLevelType(level).setDel("N");
        return regionMapper.selectOne(new QueryWrapper<>(region));
    }

    /**
     * 获取地区数据
     *
     * @param regionId 地区id
     * @return
     */
    public Region getRegion(Long regionId)
    {
        Region region = new Region();
        region.setRegionId(regionId).setDel("N");
        return regionMapper.selectOne(new QueryWrapper<>(region));
    }


    /**
     * 获取钱包信息
     *
     * @param memberId 用户id
     * @param type     钱包类型 ProConst.WalletType
     * @return
     */
    public Wallet getWallet(Long memberId, ProConst.WalletType type) throws Exception
    {
        Wallet walletQ = new Wallet();
        walletQ.setMemberId(memberId).setDel("N").setType(type.getCode());
        Wallet walletR = walletMapper.selectOne(new QueryWrapper<>(walletQ));
        if (walletR == null)
        {
            throw new Exception("错误！钱包为空");
        }
        return walletR;
    }


    /**
     * 网关记录
     */
    public void gatewayRecord(GatewayRecord gatewayRecord)
    {
        gatewayRecord.setCreateUser(-1L);
        gatewayRecordMapper.insert(gatewayRecord);
    }


    /**
     * 获取系统参数配置信息
     *
     * @param code
     * @return
     */
    public String getSysConfigValueByCode(String code)
    {
        Config config = new Config();
        config.setCode(code);

        Config result = configMapper.selectOne(new QueryWrapper<>(config));
        if (result != null)
        {
            return result.getValue();
        }
        return "";
    }


    /**
     * 获取用户信息
     *
     * @param memberId   用户id
     * @param inviteCode 邀请码
     * @return
     */
    public Member getMember(Long memberId, String inviteCode)
    {
        Member member = new Member();
        member.setMemberId(memberId).setInviteCode(inviteCode);
        return appMemberMapper.selectOne(new QueryWrapper<>(member));
    }


    /**
     * 根据id获取用户信息
     *
     * @param memberId
     * @return
     */
    public Member getMember(Long memberId)
    {
        return getMember(memberId, null);
    }


    /**
     * 是否开放日志
     *
     * @param apiGatewayCode 网关编码
     * @return
     */
    public boolean isOpenLog(String apiGatewayCode)
    {
        if (!existGateWay(apiGatewayCode))//网关是否存在
        {
            return false;
        }
        GatewayDefine define = new GatewayDefine();
        define.setDel("N").setCode(apiGatewayCode).setStatus(ProConst.GatewayStatusEnum.OPEN_LOG.getCode());
        if (gatewayDefineMapper.selectOne(new QueryWrapper<>(define)) == null)
        {
            return false;
        }
        return true;
    }


    /**
     * 是否打开网关
     *
     * @param apiGatewayCode
     * @return
     */
    public boolean isEnableGateway(String apiGatewayCode)
    {
        if (!existGateWay(apiGatewayCode))
        {
            return false;
        }
        GatewayDefine define = new GatewayDefine();
        define.setDel("N").setCode(apiGatewayCode);
        if (gatewayDefineMapper.selectOne(new QueryWrapper<>(define).in("status", ProConst.GatewayStatusEnum.OPEN.getCode(), ProConst.GatewayStatusEnum.OPEN_LOG.getCode())) == null)
        {
            return false;
        }
        return true;
    }

    /**
     * 网关是否存在
     *
     * @param apiGatewayCode
     * @return
     */
    public boolean existGateWay(String apiGatewayCode)
    {
        GatewayDefine define = new GatewayDefine();
        define.setDel("N").setCode(apiGatewayCode);
        if (gatewayDefineMapper.selectList(new QueryWrapper<>(define)).size() > 0)
        {
            return true;
        }
        return false;
    }

    /**
     * 将异常保存
     *
     * @param jsonObject
     */
    public void saveWalletException(String method, String msg, JSONObject jsonObject)
    {
        SvcException svcException = new SvcException();
        svcException.setMethod(method).setMsg(msg).setContent(jsonObject.toJSONString())
                .setCreateTime(new Date());
        svcExceptionMapper.insert(svcException);
    }

    /**
     * 获取BTC已提数量
     * @param memberId
     * @return
     */
    public BigDecimal getBtcWithdrawalPrice(Long memberId)
    {
        return cashflowMapper.getBtcWithdrawalPrice(memberId);
    }

    /**
     * 获取BTC累计数量
     * @param memberId
     * @return
     */
    public BigDecimal getBtcHeapPrice(Long memberId)
    {
        return cashflowMapper.getBtcHeapPrice(memberId);
    }
}
