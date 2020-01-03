package cn.stylefeng.guns.modular.app.dto;

import lombok.Data;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Data
@Accessors(chain = true)
public class ApiWithdrawCoinVo {

    //地址
    @NotBlank(message = "地址不能为空")
    private String toAddress;

    //币种
    @NotBlank(message = "币种不能为空")
    private String type;

    //提幣数量
    @NotNull(message = "提幣数量不能为空")
    private BigDecimal price;

    //交易密码
    @NotBlank(message = "交易密码不能为空")
    private String payPwd;

}
