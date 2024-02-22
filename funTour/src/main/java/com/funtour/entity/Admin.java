package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@TableName(value = "admin")
@ToString
public class Admin {
    @TableId(type = IdType.AUTO)
    @TableField(value = "admin_id")
    private Integer adminId;
    @TableField(value = "admin_name")
    private String adminName;
    @TableField(value = "admin_username")
    private String adminUsername;
    @TableField(value = "admin_password")
    private String adminPassword;
}
