package cn.stylefeng.guns.modular.app.dto;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class ApiCoinDto {
    private Long chainCoinId;
    private String remark;
    private String address;
}
