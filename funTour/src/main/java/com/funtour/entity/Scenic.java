package com.funtour.entity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@TableName("scenic") // 指定表名
@Data
public class Scenic {

    @TableId(value = "scenic_id", type = IdType.AUTO) // 指定主键
    private Integer scenicId;

    @TableField("scenic_name") // 指定字段名
    private String scenicName;

    @TableField("scenic_star")
    private String scenicStar;

    @TableField("scenic_province_id")
    private Integer scenicProvinceId;

    @TableField("scenic_city_id")
    private Integer scenicCityId;

    @TableField("scenic_content")
    private String scenicContent;

    @TableField("scenic_imgUrl")
    private String imgUrl;

    @TableField("scenic_type")
    private String scenicType;

    @TableField("scenic_address")
    private String scenicAddress;
}
