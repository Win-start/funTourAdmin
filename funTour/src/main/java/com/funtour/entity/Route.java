package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("route") // 指定表名
@Data
public class Route {

    @TableId(value = "route_id", type = IdType.AUTO) // 指定主键
    private Integer routeId;

    @TableField("route_name") // 指定字段名
    private String routeName;

    @TableField("route_price")
    private double routePrice;

    @TableField("route_Introduce")
    private String routeIntroduce;

    @TableField("route_date")
    private String routeDate;

    @TableField("count")
    private Integer Count;

    @TableField("r_image")
    private String rImage;

    @TableField("city_id")
    private Integer cityId;

    @TableField("province_id")
    private Integer provinceId;

    @TableField(exist = false)
    private String provinceName;
}
