package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName(value = "comment")
public class Comment {
    @TableId(value = "c_id", type = IdType.AUTO) // 指定主键
    private Integer cId;

    @TableField(value = "province_id")
    private Integer provinceId;

    @TableField(value = "user_id")
    private Integer userId;

    @TableField(value = "c_content")
    private String cContent;

    @TableField(value = "c_like")
    private Integer cLike;

    @TableField(value = "creat_time")
    private LocalDateTime createTime;

    @TableField(exist = false)
    private String username;

    @TableField(exist = false)
    private String avatarUrl;

}
