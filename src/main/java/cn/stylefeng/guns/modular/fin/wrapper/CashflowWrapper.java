package cn.stylefeng.guns.modular.fin.wrapper;

import cn.stylefeng.guns.modular.base.state.ProConst;
import cn.stylefeng.guns.modular.base.state.PromotionFactory;
import cn.stylefeng.roses.core.base.warpper.BaseControllerWrapper;
import cn.stylefeng.roses.kernel.model.page.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import java.util.List;
import java.util.Map;

/**
 * 流水记录Wrapper
 *
 * @author yaying.liu
 * @Date 2019-12-09 17:06:14
 */
public class CashflowWrapper extends BaseControllerWrapper
{

    public CashflowWrapper(Map<String, Object> single)
    {
        super(single);
    }

    public CashflowWrapper(List<Map<String, Object>> multi)
    {
        super(multi);
    }

    public CashflowWrapper(Page<Map<String, Object>> page)
    {
        super(page);
    }

    public CashflowWrapper(PageResult<Map<String, Object>> pageResult)
    {
        super(pageResult);
    }

    @Override
    protected void wrapTheMap(Map<String, Object> map)
    {
        Long memberId = (Long) map.get("memberId");
        map.put("memberIdValue", PromotionFactory.me().getMember(memberId).getPhone());


        String walletType = (String) map.get("walletType");
        if (walletType != null)
        {
            for (ProConst.WalletType e : ProConst.WalletType.values())
            {
                if (e.getCode().equals(walletType))
                {
                    map.put("walletTypeValue", e.getValue());

                }
            }
        }

        Long flowOp = (Long) map.get("flowOp");
        if (flowOp != null)
        {
            for (ProConst.CashFlowOpEnum e : ProConst.CashFlowOpEnum.values())
            {
                if (e.getCode().equals(flowOp))
                {
                    map.put("flowOpValue", e.getValue());
                }
            }
        }
        String flowType = (String) map.get("flowType");
        if (flowType != null)
        {
            for (ProConst.CashFlowTypeEnum e : ProConst.CashFlowTypeEnum.values())
            {
                if (e.getCode().equals(flowType))
                {
                    map.put("flowTypeValue", e.getValue());
                }
            }
        }


        String flowCoin = (String) map.get("flowCoin");
        if (flowCoin != null)
        {
            for (ProConst.CoinType e : ProConst.CoinType.values())
            {
                if (e.getCode().equals(flowCoin))
                {
                    map.put("flowCoinValue", e.getValue());
                }
            }
        }
        String actualCoin = (String) map.get("actualCoin");
        if (actualCoin != null)
        {
            for (ProConst.CoinType e : ProConst.CoinType.values())
            {
                if (e.getCode().equals(actualCoin))
                {
                    map.put("actualCoinValue", e.getValue());
                }
            }
        }
        String feeCoin = (String) map.get("feeCoin");
        if (feeCoin != null)
        {
            for (ProConst.CoinType e : ProConst.CoinType.values())
            {
                if (e.getCode().equals(feeCoin))
                {
                    map.put("feeCoinValue", e.getValue());
                }
            }
        }

        Long fromId = (Long) map.get("fromId");
        if (fromId.longValue() == -1)
        {
            map.put("fromIdValue", "平台");
        }
        else
        {
            map.put("fromIdValue", PromotionFactory.me().getMember(fromId).getPhone());
        }
        Long toId = (Long) map.get("toId");
        if (toId.longValue() == -1)
        {
            map.put("toIdValue", "系统");
        }
        else
        {
            map.put("toIdValue", PromotionFactory.me().getMember(toId).getPhone());
        }


    }
}