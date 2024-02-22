package com.funtour.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.funtour.entity.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AdminMapper extends BaseMapper<Admin> {
    @Select("SELECT * FROM admin WHERE admin_username = #{adminUsername}")
    Admin selectByname(String adminUsername);
}
