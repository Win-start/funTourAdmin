package com.funtour.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "hotel")
public class Hotel {
    @TableId(value = "hotel_id", type = IdType.AUTO) // 指定主键
    private Integer hotelId;

    @TableField(value = "hotel_name")
    private String hotelName;

    @TableField(value = "hotel_phone")
    private String hotelPhone;

    @TableField(value = "hotel_email")
    private String hotelEmail;

    @TableField(value = "hotel_price")
    private String hotelPrice;

    @TableField(value = "hotel_province")
    private String hotelProvince;

    @TableField(value = "hotel_city")
    private String hotelCity;
    @TableField(value = "hotel_address")
    private String hotelAddress;
    @TableField(value = "available_rooms")
    private String availableRooms;
    @TableField(value = "description")
    private String Description;
    @TableField(value = "hotel_img")
    private String hotelImg;
}
