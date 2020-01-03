package cn.stylefeng.guns.modular.app.dto;

import lombok.Data;
import lombok.experimental.Accessors;

import java.math.BigDecimal;

/**
 * 商学院信息
 */
@Data
@Accessors(chain = true)
public class ApiSchoolDto {
    private String uid;
    private String points;
    private BigDecimal money;
}
