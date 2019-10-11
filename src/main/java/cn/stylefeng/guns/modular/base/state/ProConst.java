package cn.stylefeng.guns.modular.base.state;

/***
 * 业务常量
 */
public class ProConst {


    /**
     * 支付
     */
    public enum PayEnum{
        PAID("PAID","已支付"),
        WAIT("WAIT","待支付"),
        UNPAID("UNPAID","未支付"),
        NO_NEED("NO_NEED","无需支付");
        private String code;
        private String value;

        PayEnum(String code,String value){
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
    public enum GatewayStatusEnum{
        OPEN("OPEN","开放"),
        OPEN_LOG("OPEN_LOG","开放且日志"),
        CLOSE("CLOSE","关闭");
        private String code;
        private String value;

        GatewayStatusEnum(String code,String value){
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
