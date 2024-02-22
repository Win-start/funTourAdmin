package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@TableName("orders")
@Data
public class Order {
    @TableId(value = "order_id", type = IdType.AUTO)
    private Integer orderId;

    @TableField("route_id")
    private Integer routeId;

    @TableField("user_id")
    private Integer userId;

    @TableField("user_name")
    private String userName;

    @TableField("user_phone")
    private String userPhone;

    @TableField("type")
    private Integer type;

    @TableField(value = "creat_time")
    private LocalDateTime createTime;

    @TableField(value = "route_name",exist = false) // 指定字段名
    private String routeName;

    @TableField(exist = false)
    private double routePrice;

    @TableField(exist = false)
    private String routeIntroduce;

    @TableField(exist = false)
    private String routeFlag;

    @TableField(exist = false)
    private String routeDate;

    @TableField(exist = false)
    private String isThemeTour;

    @TableField(exist = false)
    private Integer Count;

    @TableField(exist = false)
    private String rImage;

    @TableField(exist = false)
    private Integer cityId;

    @TableField(exist = false)
    private Integer provinceId;

    @TableField(exist = false)
    private String provinceName;
}
