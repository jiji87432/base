package cn.stylefeng.guns.modular.app.dto;


import lombok.Data;
import lombok.experimental.Accessors;

import javax.validation.constraints.*;
import java.math.BigDecimal;

/**
 * 积分划转dto
 */
@Data
@Accessors(chain = true)
public class ApiPointDto {

    @NotBlank(message = "地址不能为空")
    private String address;

    @NotNull(message = "数量不能为空")
    @DecimalMin("1")
    private BigDecimal number;

    @NotBlank(message = "交易密码不能为空")
    private String payPwd;

}
