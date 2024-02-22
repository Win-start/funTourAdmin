package com.funtour.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.funtour.entity.Scenic;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ScenicMapper extends BaseMapper<Scenic> {
    Scenic selectScenicById(Integer id);
}

