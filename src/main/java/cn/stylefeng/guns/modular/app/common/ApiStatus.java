package cn.stylefeng.guns.modular.app.common;

/**
 * API返回状态码
 */
public enum ApiStatus {

    ERROR(100, "错误")
    ,OK(200,"成功")
    ,BAD_REQUEST(400, "错误请求")
    ,NOT_FOUND(404,"未找到")
    ,MSG_ERROR(2001,"验证码有误")
    ,ERROR_PAY_PWD(2002,"交易密码错误")
    ,PAY_PWD_EMPTY(2003,"交易密码为空")
    ,NOT_REAL(2004,"未实名认证")
    ,WALLET_LESS(2005,"钱包余额不足")
    ,OLD_ERROR(2006,"旧密码有误")
    ,NOT_DIRECTOR(2007,"未找到推荐人")
    ,DIFF_PWD(2008,"两次密码不同")
    ,MANY_SHIPPING(2009,"只能添加一个收货地址")
    ,MIN_BTC(2010,"低于BTC最小提币量")
    ,NOT_OPEN_PROXY(2011,"未开放代理")
    ,EXIST_APPLY(2012,"您已发起申请，请耐心等待")
    ,ManyLevelApply(2013,"同级只能申请一个地区")
    ,SINGLE_PROXY(2014,"该地区已被代理")
    ,IsHaveTheLevel(2015,"已是该层级的代理商")
    ,NOT_FOUND_ADDRESS(2016,"未找到该地址")
    ,IS_THIS_ROLE(2017,"已是该身份")
    ,NOT_STANDARD(2018,"未达标")
    ,OWNER_CONVERT(2019,"不能划转给自己")
    ,OVER_ROLE(2020,"越权操作")
    ;

    private int code;

    private String msg;

    ApiStatus(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    /**
     * Return the integer value of this status code.
     */
    public int code() {
        return this.code;
    }

    /**
     * Return the integer value of this status code.
     */
    public String msg() {
        return this.msg;
    }

}
