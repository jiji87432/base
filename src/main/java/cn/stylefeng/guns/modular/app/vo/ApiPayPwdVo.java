package cn.stylefeng.guns.modular.app.vo;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

/**
 * @description: 密码
 * @author: yaying.liu
 * @date: 2019-10-26 15:54
 **/
@Data
public class ApiPayPwdVo {
    @NotBlank(message = "密码不能为空")
    @Pattern(regexp = "[a-zA-Z0-9]{6,16}",message = "密码格式有误")
    private String newPwd;
    @NotBlank(message = "确认密码不能为空")
    @Pattern(regexp = "[a-zA-Z0-9]{6,16}",message = "密码格式有误")
    private String confirmPwd;
    @NotBlank(message = "不能为空")
    @Pattern(regexp = "[a-zA-Z0-9]{6,16}",message = "msgOrOldPwd格式有误")
    private String msgOrOldPwd;
    @NotBlank(message = "type不能为空")
    private String type;
}
