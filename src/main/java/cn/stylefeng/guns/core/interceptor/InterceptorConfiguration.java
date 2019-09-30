package cn.stylefeng.guns.core.interceptor;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 拦截配置
 */
@SpringBootConfiguration
public class InterceptorConfiguration implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 注册拦截器
        InterceptorRegistration ir = registry.addInterceptor(loginInterceptor());
        // 配置拦截的路径
        ir.addPathPatterns("/app/v1/**");
        // 配置不拦截的路径
        ir.excludePathPatterns("/app/v1/login");//登录
        ir.excludePathPatterns("/app/v1/getToken");//登录
        ir.excludePathPatterns("/app/v1/register");//注册
        ir.excludePathPatterns("/app/v1/forgetPwd");//忘记密码
        ir.excludePathPatterns("/app/v1/getInvite");//短信验证码
        ir.excludePathPatterns("/app/v1/version");//版本
        ir.excludePathPatterns("/app/v1/upload/img");//图片上传
        ir.excludePathPatterns("/app/v1/carousel");//轮播图
        ir.excludePathPatterns("/app/v1/personal/contact");//联系客服
        ir.excludePathPatterns("/app/v1/news");//联系客服
        ir.excludePathPatterns("/app/v1/declare");//用户协议
        ir.excludePathPatterns("/app/v1/shop/category");//服务类型

        //TODO:开发用
        ir.excludePathPatterns("/app/v1/getToken");//获取token
    }

    @Bean
    public LoginInterceptor loginInterceptor() {
        return new LoginInterceptor();
    }

}
