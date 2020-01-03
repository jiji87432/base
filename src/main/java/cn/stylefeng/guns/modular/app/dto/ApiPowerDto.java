package cn.stylefeng.guns.modular.app.dto;

import lombok.Data;
import lombok.experimental.Accessors;

import java.math.BigDecimal;

@Data
@Accessors(chain = true)
public class ApiPowerDto {
    /**
     *  算力套餐设置id
     */
    private Long osePowerId;



    /**
     * 套餐名（1:会员 2:矿主 3：大矿主 4：超级矿主）
     */
    private String typeValue;



    /**
     * 折合（T）
     */
    private java.math.BigDecimal powerT;

    /**
     * 折合（元）
     */
    private java.math.BigDecimal powerCny;

    /**
     * 描述
     */
    private String description;

    /**
     * 图片
     */
    private String img;

    /**
     * 明细
     */
    private String detail;

    /**
     * 价格
     */
    private String priceStr;

}
