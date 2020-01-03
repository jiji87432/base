# base v1.1 
# 基于guns基础构建快速开发平台

## 更新情况
#### 最近更新时间：2020-01-03
#### 更新内容： 
 1.base v1.1 版本 UI优化
 2.代码生成器优化
#### 项目地址：localhost:8882

 ## 技术介绍
 |技术|说明|
 |:----:|:----:|
 |Spring Boot 2.1|后台核心框架|
 |MyBatis-Plus|Mybatis加强版| 
 |beetl引擎|模板引擎| 
 |layui|后台UI框架|
 |Redis|NoSQL|
 ## 拓展功能
 1.定时任务功能  (后台安全配置，去除操作页面 访问路径 /task/info)
 
 2.系统参数配置功能(后台安全配置，去除操作页面 访问路径 /config)
 2.1 分配出公共参数功能，复用功能

 3.代码生成器(后台安全配置，去除操作页面 访问路径 /code)
 3.1 模块英文名即表前缀
 3.2 映射表、数据源新字段
 
 4.微信小程序支付   
 
 5.网关管理（管理APP端访问api）
 
 6.后台常见功能（文章模块、多媒体模块、客服版本模块、公告模块、用户模块、财务模块）
 
 7.新增websocket支持
 
 ## 后台页面
 
 ### 主页面
 ![效果图](/doc/detail/images/home.png)
 
 ![效果图](/doc/detail/images/home2.png)
 
 #### websocket 演示
 ##### 浏览器：发送
 ![websocket演示](/doc/detail/images/websocket/websocket1.png)
 ##### 后台：接收后在发出给浏览器
 ![websocket演示](/doc/detail/images/websocket/websocket2.png)
 ##### 浏览器：接收后台发送信息
 ![websocket演示](/doc/detail/images/websocket/websocket3.png)
 
     