package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("AllScenic")
@Data
public class AllScenic {
    @TableField("scenic_id")
    private Integer scenicId;
    @TableField("scenic_name")
    private String scenicName;
    @TableField("scenic_star")
    private String scenicStar;
    @TableField("scenic_imgUrl")
    private String imgUrl;
    @TableField("scenic_province_id")
    private Integer scenicProvinceId;
    @TableField("scenic_city_id")
    private Integer scenicCityId;
    @TableField("scenic_content")
    private String scenicContent;
    @TableField("city_name")
    private String cityName;
    @TableField("province_name")
    private String provinceName;
    @TableField("scenic_type")
    private String scenicType;
    @TableField("scenic_address")
    private String scenicAddress;
}
