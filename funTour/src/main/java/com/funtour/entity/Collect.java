package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("collect")
@Data
public class Collect {
    @TableId(value = "collect_id", type = IdType.AUTO) // 指定主键
    private Integer collectId;

    @TableField(value = "user_id")
    private Integer userId;

    @TableField(value = "scenic_id")
    private Integer scenicId;

    @TableField(value = "scenic_name",exist = false)
    private String scenicName;

    @TableField(value = "scenic_imgUrl",exist = false)
    private String scenicImgUrl;
}
