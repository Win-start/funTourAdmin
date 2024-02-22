package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@TableName("city")
@Data
public class City {
    @TableId(value = "city_id", type = IdType.AUTO) // 指定主键
    private Integer cityId;
    @TableField("province_id")
    private Integer provinceId;
    @TableField("city_name")
    private String cityName;
}
