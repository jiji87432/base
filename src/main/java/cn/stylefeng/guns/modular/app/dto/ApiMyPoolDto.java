package cn.stylefeng.guns.modular.app.dto;

import lombok.Data;
import lombok.experimental.Accessors;

import java.math.BigDecimal;
import java.util.List;

/**
 * 我的矿场信息
 * @param <T>
 */
@Data
@Accessors(chain = true)
public class ApiMyPoolDto<T> {

    /**
     * 日收益
     */
    private BigDecimal currentProfit;

    /**
     * BTC行情价
     */
    private BigDecimal btcUsdt;

    /**
     * 波形图
     */
    private T chart;

    /**
     * 我的算力
     */
    private BigDecimal power;

    /**
     * BTC 可用数量
     */
    private BigDecimal totalPrice;

    /**
     * BTC 累计挖矿
     */
    private BigDecimal countPrice;

    /**
     * BTC 已提数量
     */
    private BigDecimal usedPrice;


}
