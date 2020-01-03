package cn.stylefeng.guns.modular.app.dto;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class ApiRegionDto {

    private Long regionId;
    private String name;
    private int levelType;
    /**
     * 是否已被代理 0：否 1：是
     */
    private int proxy;

    private String status;
}
