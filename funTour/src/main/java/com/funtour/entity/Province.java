package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@TableName("province")
@Data
public class Province {
    @TableId(value = "province_id", type = IdType.AUTO)
    private Integer provinceId;
    @TableField("province_name")
    private String provinceName;
}
