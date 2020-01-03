package cn.stylefeng.guns.modular.fin.mapper;
import cn.stylefeng.guns.modular.app.entity.Member;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import cn.stylefeng.guns.modular.fin.entity.Cashflow;
/**
 * 流水记录Mapper 接口
 *
 * @author yaying.liu
 * @Date 2019-12-09 17:06:14
 */
public interface CashflowMapper extends BaseMapper<Cashflow> {

    Page<Map<String,Object>> selectByCondition(@Param("page") Page page, @Param("condition") String condition,@Param("flowType")String flowType);

    BigDecimal getBtcWithdrawalPrice(@Param("memberId") Long memberId);

    BigDecimal getBtcHeapPrice(@Param("memberId")Long memberId);

    BigDecimal getCurrentPerformance(@Param("memberId")Long memberId);

    List<Cashflow> getCurrentBuyPowerCashflow();

    BigDecimal getTotalPrice(@Param("teamMember")List<Member> teamMember);

    List<Cashflow> getWillExpire(@Param("powerDay") Long powerDay);

    List<Cashflow> getCurrentPerformanceCashList(@Param("memberId")Long memberId);

    BigDecimal getSumNewBuyPriceByArea(@Param("member")Member member);

    BigDecimal getBuyPowerForDirectNumber(@Param("memberId")Long memberId);

    BigDecimal getTodayNewPower();
    //今日挖矿收益
    BigDecimal getTodayBtc();
}