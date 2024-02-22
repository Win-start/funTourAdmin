package com.funtour.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.funtour.entity.City;
import com.funtour.entity.Province;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CityMapper extends BaseMapper<City> {
    @Select("SELECT c.*, p.province_name FROM city c JOIN province p ON c.province_id = p.province_id WHERE c.city_name LIKE CONCAT('%',#{keyword},'%') OR p.province_name LIKE CONCAT('%',#{keyword},'%')")
    List<City> selectByKeyword(@Param("keyword") String keyword);

    List<City> selectCitiesByProvinceId(String provinceId);
}
