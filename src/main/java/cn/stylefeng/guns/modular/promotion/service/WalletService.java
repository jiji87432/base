package cn.stylefeng.guns.modular.promotion.service;

import cn.hutool.core.util.StrUtil;
import cn.stylefeng.guns.core.common.page.LayuiPageFactory;
import cn.stylefeng.guns.modular.base.state.Constant;
import cn.stylefeng.guns.modular.base.state.ProConst;
import cn.stylefeng.guns.modular.base.state.PromotionFactory;
import cn.stylefeng.guns.modular.promotion.entity.Wallet;
import cn.stylefeng.guns.modular.promotion.mapper.WalletMapper;
import cn.stylefeng.roses.core.reqres.response.ResponseData;
import cn.stylefeng.roses.core.reqres.response.SuccessResponseData;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Map;

/**
 * 用户钱包Service
 *
 * @author yaying.liu
 * @Date 2019-10-14 18:05:20
 */
@Service
public class WalletService extends ServiceImpl<WalletMapper, Wallet>
{

    /**
     * 查询用户钱包
     */
    public Page<Map<String, Object>> selectByCondition(String condition)
    {
        Page page = LayuiPageFactory.defaultPage();
        return this.baseMapper.selectByCondition(page, condition);
    }

    /**
     * 删除用户钱包
     */
    public void deleteWallet(Long walletId)
    {
        Wallet entity = this.baseMapper.selectById(walletId);
        //将删除标志设置为Y，表示删除
        entity.setDel("Y");
        this.baseMapper.updateById(entity);
    }

    /**
     * 添加用户钱包
     */
    public void addWallet(Wallet wallet)
    {
        this.baseMapper.insert(wallet);
    }


    public ResponseData edit(Wallet wallet)
    {
        Wallet walletQ = this.getById(wallet.getWalletId());
        if(walletQ!=null)
        {
            if (wallet.getTotalPrice().compareTo(walletQ.getTotalPrice()) > 0)
            {
                PromotionFactory.me().saveWalletHistory(walletQ);
                //后台增加
                PromotionFactory.me().saveCashflow(walletQ.getMemberId(),walletQ.getType(),ProConst.CashFlowOpEnum.FLOW_IN,ProConst.CashFlowTypeEnum.PLATFORM_ADD.getCode(),
                        wallet.getTotalPrice().subtract(walletQ.getTotalPrice()),walletQ.getType(),
                        wallet.getTotalPrice().subtract(walletQ.getTotalPrice()),walletQ.getType(),
                        BigDecimal.ZERO,walletQ.getType(),
                        null,null,StrUtil.equals(walletQ.getType(),ProConst.CoinType.T.getCode())?"Y":null,null,
                        walletQ.getTotalPrice(),wallet.getTotalPrice(),Constant.SYS_PLATFORM,walletQ.getMemberId());
            }
             if (wallet.getTotalPrice().compareTo(walletQ.getTotalPrice()) < 0)
            {
                PromotionFactory.me().saveWalletHistory(walletQ);
                //后台减少
                PromotionFactory.me().saveCashflow(walletQ.getMemberId(),walletQ.getType(),ProConst.CashFlowOpEnum.FLOW_OUT,ProConst.CashFlowTypeEnum.PLATFORM_SUB.getCode(),
                        walletQ.getTotalPrice().subtract(wallet.getTotalPrice()),walletQ.getType(),
                        walletQ.getTotalPrice().subtract(wallet.getTotalPrice()),walletQ.getType(),
                        BigDecimal.ZERO,walletQ.getType(),
                        null,null,StrUtil.equals(walletQ.getType(),ProConst.CoinType.T.getCode())?"Y":null,null,
                        walletQ.getTotalPrice(),wallet.getTotalPrice(),walletQ.getMemberId(),Constant.SYS_PLATFORM);
            }

        }

        this.updateById(wallet);
        return new SuccessResponseData();
    }
}