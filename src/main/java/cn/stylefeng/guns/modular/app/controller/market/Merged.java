package cn.stylefeng.guns.modular.app.controller.market;

import lombok.Data;
import lombok.experimental.Accessors;

import java.math.BigDecimal;
import java.util.List;

@Data
@Accessors(chain = true)
public class Merged {

    private long id;
    private long ts;
    private BigDecimal close;
    private BigDecimal open;
    private BigDecimal high;
    private BigDecimal low;
    private BigDecimal amount;
    private BigDecimal count;
    private BigDecimal vol;
    private List<BigDecimal> ask;
    private List<BigDecimal> bid;


}
