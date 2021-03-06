package cn.stylefeng.guns.modular.meta_data.mapper;

import cn.stylefeng.guns.modular.meta_data.entity.Config;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface ConfigMapper extends BaseMapper<Config> {

    Page<Map<String,Object>> selectByCondition(@Param("page") Page page, @Param("condition") String condition);
    Page<Map<String,Object>> selectByConditionCommon(@Param("page") Page page, @Param("condition") String condition);
}
