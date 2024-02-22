package com.funtour.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.funtour.entity.Collect;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CollectMapper extends BaseMapper<Collect> {
    @Select("SELECT c.*,s.* FROM collect c LEFT JOIN scenic s ON c.scenic_id = s.scenic_id where c.user_id=#{userId}")
    List<Collect> getAllCollect(@Param("userId") Integer userId);
}
