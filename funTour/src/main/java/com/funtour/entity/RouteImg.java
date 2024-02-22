package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("route_img")
@Data
public class RouteImg {
    @TableId(value = "rg_id", type = IdType.AUTO) // 指定主键
    private Integer rgId;
    @TableField(value = "route_id")
    private Integer routeId;
    @TableField(value = "bigPic")
    private String bigPic;
    @TableField(value = "smallPic")
    private String smallPic;
}
