package cn.stylefeng.guns.modular.app.controller;

import cn.hutool.core.util.StrUtil;
import cn.stylefeng.guns.modular.app.common.ApiStatus;
import cn.stylefeng.guns.modular.app.entity.Member;
import cn.stylefeng.guns.modular.app.vo.ApiOrderVo;
import cn.stylefeng.guns.modular.base.state.ProConst;
import cn.stylefeng.guns.modular.base.util.RandomUtil;
import cn.stylefeng.guns.modular.base.util.RedisUtil;
import cn.stylefeng.guns.modular.base.util.Result;
import cn.stylefeng.guns.modular.extension.pay.ali_pay.api.AliPayApi;
import cn.stylefeng.guns.modular.extension.pay.ali_pay.api.AliPayApiConfig;
import cn.stylefeng.guns.modular.extension.pay.ali_pay.api.AliPayApiConfigKit;
import cn.stylefeng.guns.modular.extension.pay.entity.AliPayBean;
import cn.stylefeng.guns.modular.fin.entity.PayOrder;
import cn.stylefeng.guns.modular.fin.entity.PayRecord;
import cn.stylefeng.guns.modular.fin.service.PayOrderService;
import cn.stylefeng.guns.modular.fin.service.PayRecordService;
import com.alipay.api.AlipayApiException;
import com.alipay.api.domain.AlipayTradeAppPayModel;
import com.alipay.api.response.AlipayTradeAppPayResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.math.BigDecimal;

/**
 * 支付api
 */
@RequestMapping("/api/pay")
@Controller
public class PayApi extends AbstractAliPayApiController {


    @Autowired
    private AliPayBean aliPayBean;
    @Autowired
    RedisUtil redisUtil;



    @Autowired
    PayOrderService payOrderService;

    @Autowired
    PayRecordService payRecordService;


    private final static String NOTIFY_URL = "/api/personal/notifyUrl";
//    private final static String RETURN_URL = "/aliPay/return_url";
    /**
     * 证书模式
     */
    private final static String RETURN_URL = "/aliPay/cert_return_url";

    @Override
    public AliPayApiConfig getApiConfig() throws AlipayApiException {
        AliPayApiConfig aliPayApiConfig;
        try {
            aliPayApiConfig = AliPayApiConfigKit.getApiConfig(aliPayBean.getAppId());
        } catch (Exception e) {
            aliPayApiConfig = AliPayApiConfig.builder()
                    .setAppId(aliPayBean.getAppId())
                    .setAliPayPublicKey(aliPayBean.getPublicKey())
                    .setAppCertPath(aliPayBean.getAppCertPath())
                    .setAliPayCertPath(aliPayBean.getAliPayCertPath())
                    .setAliPayRootCertPath(aliPayBean.getAliPayRootCertPath())
                    .setCharset("UTF-8")
                    .setPrivateKey(aliPayBean.getPrivateKey())
                    .setServiceUrl(aliPayBean.getServerUrl())
                    .setSignType("RSA2")
                    // 普通公钥方式
                    .build();
                    // 证书模式
//                    .buildByCert();
        }
        return aliPayApiConfig;
    }

    @RequestMapping("/buildOrder")
    @ResponseBody
    @Transactional(rollbackFor = Exception.class)
    public Result buildOrder(@RequestHeader("token") String token, @Valid ApiOrderVo apiOrderVo) throws AlipayApiException {
        //填充业务逻辑
        return Result.success("下单成功");

    }


}
