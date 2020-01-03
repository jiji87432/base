package cn.stylefeng.guns.modular.app.vo;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class ApiUserInfoDto {

    /**
     * 电话号码
     */
    private String phone;

    /**
     * 会员身份
     */
    private String typeValue;

    /**
     * 邀请码
     */
    private String inviteCode;

    /**
     * 邀请链接
     */
    private String inviteLink;

    /**
     * 头像
     */
    private String head;

    /**
     * uid
     */
    private String uid;

    /**
     * 所属区域
     */
    private String address;
    /**
     * 代理机制
     */
    private String proxy="无";
    /**
     * 核心机制
     */
    private String core="无";
    /**
     * 是否开通积分划转(0:否 1：是）
     */
    private String points;

    /**
     * 积分等级
     */
    private String pointLevel;

}
