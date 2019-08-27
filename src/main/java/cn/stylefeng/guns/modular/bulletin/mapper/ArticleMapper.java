package cn.stylefeng.guns.modular.bulletin.mapper;
import cn.stylefeng.guns.modular.bulletin.entity.Article;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import java.util.Map;
/**
 * 简介文章Mapper
 *
 * @author yaying.liu
 * @Date 2019-08-16 14:30:41
 */
public interface ArticleMapper extends BaseMapper<Article> {

    Page<Map<String,Object>> selectByCondition(@Param("page") Page page, @Param("condition") String condition);

}