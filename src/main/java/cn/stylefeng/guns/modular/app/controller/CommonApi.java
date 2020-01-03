package cn.stylefeng.guns.modular.app.controller;

import cn.stylefeng.guns.modular.app.service.AppCarouselService;
import cn.stylefeng.guns.modular.app.service.HomeService;
import cn.stylefeng.guns.modular.app.vo.VersionVo;
import cn.stylefeng.guns.modular.base.state.Constant;
import cn.stylefeng.guns.modular.base.util.Result;
import cn.stylefeng.guns.modular.bulletin.entity.Article;
import cn.stylefeng.guns.modular.bulletin.entity.News;
import cn.stylefeng.guns.modular.bulletin.service.ArticleService;
import cn.stylefeng.guns.modular.bulletin.service.NewsService;
import cn.stylefeng.guns.modular.com.entity.Business;
import cn.stylefeng.guns.modular.com.service.BusinessService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 公共API
 * 无需token
 */
@CrossOrigin
@RequestMapping("/api/common")
@RestController
public class CommonApi {

    @Autowired
    HomeService homeService;

    @Autowired
    AppCarouselService appCarouselService;

    @Autowired
    NewsService newsService;

    @Autowired
    ArticleService articleService;

    @Autowired
    BusinessService businessService;

    /***
     * 用户协议
     */
    @PostMapping("/declares")
    public Result declares()
    {
        return homeService.declares();
    }


    /**
     * 版本信息
     */
    @PostMapping("/version")
    public Result version(VersionVo versionVo){
        return homeService.version(versionVo);
    }


    /**
     * 省市区列表
     */
    @PostMapping("/areaList")
    public Result areaList(@RequestParam(defaultValue = "1") int level,@RequestParam(defaultValue = "-1") int id,@RequestParam(defaultValue = "N")String status){
        return homeService.areaList(level,id,status);
    }

      /**
     * 省市区列表数量
     */
    @PostMapping("/areaListCount")
    public Result areaListCount(@RequestParam(defaultValue = "1") int level,@RequestParam(defaultValue = "-1") int id,@RequestParam(defaultValue = "N")String status){
        return homeService.areaListCount(level,id,status);
    }



    @PostMapping("/areaList_")
    public Result areaList_(){
        return homeService.areaList_();
    }


    /**
     * 获取轮播图列表
     * @return
     */
    @PostMapping("/carousel")
    public Result list(@RequestParam(required = false,defaultValue = "HOME_TOP")String type){
        return  appCarouselService.getList(type);
    }



    /**
     * 系统公告
     */
    @PostMapping("/newsList")
    public Result newsList(Page page)
    {
        News news=new News();
        news.setDel("N");
        return Result.success(newsService.page(page,new QueryWrapper<>(news).orderByDesc(Constant.CREATE_TIME)));
    }


    /**
     * 行业资讯
     */
    @PostMapping("/businessList")
    public Result businessList(Page page)
    {
        Business article=new Business();
        article.setDel("N");
        return Result.success(businessService.page(page,new QueryWrapper<>(article).orderByDesc(Constant.CREATE_TIME)));
    }


    /**
     * 行情
     */
    @PostMapping("/huobiTicket")
    public Result huobiTicket(){
        return homeService.huobiTicket();
    }

    /**
     * 联系客服
     */
    @PostMapping("/contact")
    public Result contact(){
        return homeService.contact();
    }
    /**
     * 业务文章
     */
    @PostMapping("/article")
    public Result article(@RequestParam(defaultValue = "POW")String type){
        Article article=new Article();
        article.setArticleType(type).setDel("N");
        return Result.success("业务文章",articleService.getOne(new QueryWrapper<>(article)));
    }


    /**
     * 多媒体信息列表
     */
    @PostMapping("/media")
    public Result media(Page page,@RequestParam(defaultValue = "VIDEO")String type)
    {
        return homeService.media(page,type);
    }


    /**
     *电话区号表
     */
    @PostMapping("/phoneCode")
    public Result phoneCode()
    {
        return homeService.phoneCode();
    }

    /**
     * btcUsdt BTC行情价
     */
    @PostMapping("/myPoolBtcUsdt")
    public Result myPoolBtcUsdt()  {
        return homeService.myPoolBtcUsdt();
    }
    /**
     * 波形图
     */
    @PostMapping("/myPoolChart")
    public Result myPoolChart()  {
        return homeService.myPoolChart();
    }

}
