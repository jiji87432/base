package cn.stylefeng.guns.modular.base.state;

/***
 * 业务常量
 */
public class ProConst {


    /**
     * 收益类型
     */
    public enum ProfitType {
        DIRECT("DIRECT", "直推收益",1)
        ,TEAM("TEAM", "团队收益",2)
        ,SAME("SAME", "平级收益",3)
        ;
        private String code;
        private String value;
        private int type;

        ProfitType(String code, String value,int type) {
            this.code = code;
            this.value = value;
            this.type=type;
        }
        public int type(){
            return type;
        }
        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }

    }

    /**
     * 省市县代理
     */
    public enum ProxyType {
        PROVINCE("1", "省代理","PROVINCE_PROXY")
        ,CITY("2", "市代理","CITY_PROXY")
        ,AREA("3", "县/区代理","AREA_PROXY")
        ;
        private String code;
        private String value;
        private String type;

        ProxyType(String code, String value,String type) {
            this.code = code;
            this.value = value;
            this.type=type;
        }

        /**
         * 流水类型
         * @return
         */
        public String flowType(){
            return type;
        }
        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }

    }

    /**
     * 合创理事角色类型
     */
    public enum TeamworkType {
        COOPERATION("COOPERATION", "合创",2,"COOPERATION_AWARD")
        ,DIRECTOR("DIRECTOR", "理事",1,"DIRECTOR_AWARD")
        ;
        private String code;
        private String value;
        private int type;
        private String flowType;

        TeamworkType(String code, String value,int type,String flowType) {
            this.code = code;
            this.value = value;
            this.type = type;
            this.flowType = flowType;

        }

        /**
         * 流水类型
         * @return
         */
        public String flowType()
        {
            return flowType;
        }

        public String getValue() {
            return value;
        }
        public int type() {
            return type;
        }

        public String getCode() {
            return code;
        }

    }
    /**
     * 轮播图类型
     */
    public enum CarouselType {
        HOME_TOP("HOME_TOP", "首页上层")
        ,HOME_DOWN("HOME_DOWN", "首页下层")
        ;
        private String code;
        private String value;

        CarouselType(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }

    }
    /**
     * 多媒体类型
     */
    public enum MediaTypeEnum {
        VIDEO("VIDEO", "视频")
        ,AUDIO("AUDIO", "语音")
        ;
        private String code;
        private String value;

        MediaTypeEnum(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }

    }

     /**
     * 文章类型
     */
    public enum ArticleTypeEnum {
        POW("POW", "矿场介绍")
        ,SCHOOL("SCHOOL", "商学院")
        ,ABOUT_US("ABOUT_US", "关于我们")
        ;
        private String code;
        private String value;

        ArticleTypeEnum(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }

    }



    /**
     * 地区层级类型
     */
    public enum RegionLevelType {
        PROVINCE(1L, "省"), CITY(2L, "市"), AREA(3L, "县");
        private Long code;
        private String value;

        RegionLevelType(Long code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public Long getCode() {
            return code;
        }
    }

    /**
     * 用户钱包账户类型
     */
    public enum WalletType {
        BTC("BTC", "BTC"), T("T", "算力"), POINT("POINT", "积分");
        private String code;
        private String value;

        WalletType(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }
    }
    /**
     * 币种类型
     */
    public enum CoinType {
        BTC("BTC", "BTC"), T("T", "算力"), POINT("POINT", "积分");
        private String code;
        private String value;

        CoinType(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }
    }




     /**
     * 提现类型
     */
    public enum WithdrawStatusEnum {
        CHECK("CHECK", "审核中")
         , PASS("PASS", "审核通过")
         , COIN("COIN", "提币中")
         , REJECT("REJECT", "审核不通过");
        private String code;
        private String value;

        WithdrawStatusEnum(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }
    }

     /**
     * 常规审核
     */
    public enum Status {
        CHECK("CHECK", "审核中")
         , PASS("PASS", "审核通过")
         , REJECT("REJECT", "审核不通过");
        private String code;
        private String value;

         Status(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String value() {
            return value;
        }

        public String code() {
            return code;
        }
    }




    /**
     * 用户类型
     */
    public enum MemberType {
        TEMP(0, "临时用户"), NORMAL(1, "会员"), MINE(2, "矿主"), BIG_MINE(3, "大矿主"), SUPER_MINE(4, "超级矿主");
        private int code;
        private String value;

        MemberType(int code, String value) {
            this.code = code;
            this.value = value;
        }

        public String value() {
            return value;
        }

        public String code() {
            return code + "";
        }
    }

    /**
     * 流水类型
     */

    public enum CashFlowTypeEnum {
        WITHDRAW("WITHDRAW", "提币")
        , WITHDRAW_REJECT("WITHDRAW_REJECT", "提币未通过")
        , CHECK_IN("CHECK_IN", "签到")
        , CONVERT_POINT("CONVERT_POINT", "积分划转")
        , BUY_POWER("BUY_POWER", "购买算力")
        , DiRECT_PROFIT("DiRECT_PROFIT", "直推收益")
        , POWER_EXPIRE("POWER_EXPIRE", "算力过期")
        , TEAM("TEAM", "团队返利")
        , SAME("SAME", "平级返利")
        , CORE("CORE", "市场分红")
        ,PROVINCE_PROXY("PROVINCE_PROXY", "省代理分红")
        ,CITY_PROXY("CITY_PROXY", "市代理分红")
        ,AREA_PROXY("AREA_PROXY", "县/区代理分红")
        ,PLATFORM_ADD("PLATFORM_ADD", "后台增加")
        ,PLATFORM_SUB("PLATFORM_SUB", "后台减少")
        ,MINING("MINING", "挖矿收益")
        ;
        private String code;
        private String value;

        CashFlowTypeEnum(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }
    }


    /**
     * 资金流向
     */
    public enum CashFlowOpEnum {
        FLOW_IN(1L, "流入"),
        FLOW_OUT(0L, "流出");
        private Long code;
        private String value;

        CashFlowOpEnum(Long code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public Long getCode() {
            return code;
        }
    }

    /**
     * 支付方式
     */
    public enum PayTypeEnum{
        ALI_PAY("ALI_PAY","支付宝支付")
        ,WX_PAY("WX_PAY","微信支付")
        ,UNION_PAY("UNION_PAY","银联支付")
        ;
        private String code;
        private String value;

        PayTypeEnum(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }
    }


    /**
     * 支付
     */
    public enum PayEnum {
        PAID("PAID", "已支付"),
        WAIT("WAIT", "待支付"),
        UNPAID("UNPAID", "未支付"),
        NO_NEED("NO_NEED", "无需支付");
        private String code;
        private String value;

        PayEnum(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }
    }


    /**
     * 网关状态
     */
    public enum GatewayStatusEnum {
        OPEN("OPEN", "开放"),
        OPEN_LOG("OPEN_LOG", "开放且日志"),
        CLOSE("CLOSE", "关闭");
        private String code;
        private String value;

        GatewayStatusEnum(String code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public String getCode() {
            return code;
        }
    }


}
