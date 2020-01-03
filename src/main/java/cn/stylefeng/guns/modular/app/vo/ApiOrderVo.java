package cn.stylefeng.guns.modular.app.vo;

import lombok.Data;
import lombok.experimental.Accessors;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 * app下单VO
 */
@Data
@Accessors(chain = true)
public class ApiOrderVo {

    /**
     * 套餐id
     */
    @NotNull(message = "套餐id不能为空")
    private Long osePowerId;

    /**
     * 份数
     */
    @NotNull(message = "份数不能为空")
    @Min(value = 1,message = "份数至少为1")
    private int number;

    /**
     * 支付类型
     * <p>
     *     ALI_PAY("ALI_PAY","支付宝支付")
     *     WX_PAY("WX_PAY","微信支付")
     *     UNION_PAY("UNION_PAY","银联支付")
     *
     * </p>
     */
    @Pattern(regexp="^ALI_PAY$|^WX_PAY$|^UNION_PAY$",message = "支付类型有误")
    private String payType;


    /**
     * 支付设备 IOS ANDROID
     */
    @Pattern(regexp="^IOS$|^ANDROID$",message = "支付设备有误")
    private String device;



}

