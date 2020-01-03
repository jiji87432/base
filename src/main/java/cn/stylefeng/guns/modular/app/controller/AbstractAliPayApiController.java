package cn.stylefeng.guns.modular.app.controller;

import cn.stylefeng.guns.modular.extension.pay.ali_pay.api.AliPayApiConfig;
import com.alipay.api.AlipayApiException;

/**
 */
public abstract class AbstractAliPayApiController {
    /**
     * 获取支付宝配置
     *
     * @return {@link AliPayApiConfig} 支付宝配置
     * @throws AlipayApiException 支付宝 Api 异常
     */
    public abstract AliPayApiConfig getApiConfig() throws AlipayApiException;
}
