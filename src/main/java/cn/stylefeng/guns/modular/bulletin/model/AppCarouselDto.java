package cn.stylefeng.guns.modular.bulletin.model;

import cn.stylefeng.guns.modular.bulletin.entity.AppCarousel;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class AppCarouselDto  {
    private String img;

    private String title;

    private String link;
}
