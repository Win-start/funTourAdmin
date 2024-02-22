package com.funtour.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.funtour.entity.Hotel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface HotelMapper extends BaseMapper<Hotel> {
    List<Hotel> selectByKeyword(@Param("keyword") String keyword);

    int updateHotelImg(@Param("hotelId") Integer hotelId, @Param("hotelImg") String hotelImg);
}

