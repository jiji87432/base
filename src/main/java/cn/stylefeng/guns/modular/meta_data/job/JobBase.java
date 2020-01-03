package cn.stylefeng.guns.modular.meta_data.job;

import cn.stylefeng.guns.modular.app.controller.market.Kline;
import cn.stylefeng.guns.modular.app.controller.market.KlineResponse;
import cn.stylefeng.guns.modular.app.controller.market.Merged;
import cn.stylefeng.guns.modular.app.controller.market.MergedResponse;
import cn.stylefeng.guns.modular.app.controller.market.bo.TicketBo;
import cn.stylefeng.guns.modular.app.service.HomeService;
import cn.stylefeng.guns.modular.app.service.HuoBiService;
import cn.stylefeng.guns.modular.base.state.Constant;
import cn.stylefeng.guns.modular.base.util.RedisUtil;
import cn.stylefeng.guns.modular.sevice_exception.WalletException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.math.RoundingMode;

@Component
public class JobBase
{

    @Autowired
    HuoBiService huoBiService;

    @Autowired
    RedisUtil redisUtil;
    @Autowired
    HomeService homeService;

    /**
     * 实时行情
     */
    @Scheduled(cron = "* * * * * ?")
    public void getTicket()
    {
        MergedResponse<Merged> btcusdt = huoBiService.getTicket("btcusdt");
        MergedResponse<Merged> ethusdt = huoBiService.getTicket("ethusdt");
        MergedResponse<Merged> xrpusdt = huoBiService.getTicket("xrpusdt");
        if (btcusdt != null && ethusdt != null && xrpusdt != null)
        {
            btcusdt.setCh("BTC/USDT");
            ethusdt.setCh("ETH/USDT");
            xrpusdt.setCh("XRP/USDT");
            setTicket(btcusdt, 0);
            setTicket(ethusdt, 1);
            setTicket(xrpusdt, 2);
        }

        KlineResponse<Kline> response = huoBiService.kline("btcusdt", "60min", "24");
        if (response != null)
        {
//            redisUtil.lRemove(Constant.BTC_KLINE,200,null);
            redisUtil.set(Constant.BTC_KLINE, response);
        }
    }


    private void setTicket(MergedResponse<Merged> response, int index)
    {

        if (response != null && response.getTick() != null)
        {
            Merged btc = response.getTick();
            TicketBo ticketBoo = new TicketBo();
            ticketBoo.setName(response.getCh()).setClose(btc.getClose());
            BigDecimal btcRate = btc.getClose().subtract(btc.getOpen()).divide(btc.getOpen(), 4, RoundingMode.DOWN);
            ticketBoo.setRate(btcRate);
            if (btcRate.compareTo(BigDecimal.ZERO) >= 0)
            {
                ticketBoo.setSymbol("+");
            }
            else
            {
                ticketBoo.setSymbol("-");
            }
            long size = redisUtil.lGetListSize(Constant.TICKET_HUOBI);
            if (size == 3)
            {
                redisUtil.lUpdateIndex(Constant.TICKET_HUOBI, index, ticketBoo);
            }
            else
            {
                redisUtil.lSet(Constant.TICKET_HUOBI, ticketBoo);
            }

        }
    }







}
