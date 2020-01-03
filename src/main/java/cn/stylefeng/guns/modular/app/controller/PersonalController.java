package cn.stylefeng.guns.modular.app.controller;


import cn.stylefeng.guns.core.common.annotion.ApiGateway;
import cn.stylefeng.guns.modular.app.service.PersonalService;
import cn.stylefeng.guns.modular.app.vo.TestVo;
import cn.stylefeng.guns.modular.base.state.ProConst;
import cn.stylefeng.guns.modular.base.util.Result;
import cn.stylefeng.guns.modular.extension.pay.ali_pay.api.AliPayApi;
import cn.stylefeng.guns.modular.extension.pay.entity.AliPayBean;
import cn.stylefeng.roses.core.base.controller.BaseController;
import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * 外部回调统一Api
 *
 * 注：当前token未拦截
 */
@RestController
@RequestMapping("/api/personal")
public class PersonalController {

    @Autowired
    PersonalService personalService;

    @Autowired
    private AliPayBean aliPayBean;


    /**
     * 联系客服
     */
    @RequestMapping("/contact")
    public Result contact()
    {
        return  personalService.contact();
    }


    /**
     * 业务文章
     * @param articleType
     * @return
     */
    @RequestMapping("/article")
    public Result article(String articleType)
    {
        return personalService.getArticle(articleType);
    }


    /**
     * 支付宝支付回调
     * @param request
     * @return
     */
    @RequestMapping(value = "/AliPayNotify")
    public String certNotifyUrl(HttpServletRequest request) {
        try {
            // 获取支付宝POST过来反馈信息
            Map<String, String> params = AliPayApi.toMap(request);

            for (Map.Entry<String, String> entry : params.entrySet()) {
                System.out.println(entry.getKey() + " = " + entry.getValue());
            }

            boolean verifyResult = AlipaySignature.rsaCertCheckV1(params, aliPayBean.getAliPayCertPath(), "UTF-8", "RSA2");

            if (verifyResult) {
                // TODO 请在这里加上商户的业务逻辑程序代码 异步通知可能出现订单重复通知 需要做去重处理

                //流水生成及订单修改
                finishOrder(params);

                System.out.println("certNotifyUrl 验证成功succcess");
                return "success";
            } else {
                System.out.println("certNotifyUrl 验证失败");
                // TODO
                return "failure";
            }
        } catch (AlipayApiException e) {
            e.printStackTrace();
            return "failure";
        }
    }

    /**
     * 微信回调
     */
    @RequestMapping(value = "/WxPayNotify", method = {RequestMethod.POST, RequestMethod.GET})
    public String payNotify(HttpServletRequest request) {
//        String xmlMsg = HttpKit.readData(request);
//        log.info("支付通知=" + xmlMsg);
//        Map<String, String> params = WxPayKit.xmlToMap(xmlMsg);
//
//        String returnCode = params.get("return_code");
//
//        // 注意重复通知的情况，同一订单号可能收到多次通知，请注意一定先判断订单状态
//        // 注意此处签名方式需与统一下单的签名类型一致
//        if (WxPayKit.verifyNotify(params, WxPayApiConfigKit.getWxPayApiConfig().getPartnerKey(), SignType.HMACSHA256)) {
//            if (WxPayKit.codeIsOk(returnCode)) {
//                // 更新订单信息
//                // 发送通知等
//                Map<String, String> xml = new HashMap<String, String>(2);
//                xml.put("return_code", "SUCCESS");
//                xml.put("return_msg", "OK");
//                return WxPayKit.toXml(xml);
//            }
//        }
        return null;
    }



    /**
     * 流水生成及订单修改
     * @param params
     */
    private void finishOrder(Map<String,String> params) {
        /**
         * step 1:查询存在该订单
         */
        /**
         * step 2:订单状态是否为未支付
         */
        /**
         * step 3: 修改订单记录状态及完成时间、更新钱包
         */

        /**
         * step 4:流水生成
         */
//        ProConst.CashFlowTypeEnum.BUY_POWER;
        //状态 ：ENABLE 有效


    }


}
