package cn.stylefeng.guns.modular.chain.service;

import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.stylefeng.guns.core.common.page.LayuiPageFactory;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import java.util.Map;
import cn.stylefeng.guns.modular.chain.entity.Withdraw;
import cn.stylefeng.guns.modular.chain.mapper.WithdrawMapper;
/**
 * 提币信息Service
 *
 * @author yaying.liu
 * @Date 2019-12-10 20:05:21
 */
@Service
public  class WithdrawService extends ServiceImpl<WithdrawMapper,Withdraw>{

    /**
    * 查询提币信息
    */
    public Page<Map<String,Object>> selectByCondition(String condition) {
        Page page = LayuiPageFactory.defaultPage();
        return this.baseMapper.selectByCondition(page,condition);
    }

    /**
    * 删除提币信息
    */
    public void deleteWithdraw(Long withdrawId) {
        Withdraw entity=this.baseMapper.selectById(withdrawId);
        //将删除标志设置为Y，表示删除
        entity.setDel("Y");
        this.baseMapper.updateById(entity);
    }

    /**
    * 添加提币信息
    */
    public void addWithdraw(Withdraw withdraw) {
        this.baseMapper.insert(withdraw);
    }
}