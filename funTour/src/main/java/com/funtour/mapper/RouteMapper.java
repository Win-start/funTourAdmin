package com.funtour.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.funtour.entity.Route;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RouteMapper extends BaseMapper<Route> {
    @Select("SELECT r.*, p.province_name FROM route r LEFT JOIN province p ON r.province_id = p.province_id ORDER BY r.route_id LIMIT 8")
    List<Route> getHotRoutes();

    List<Route> findRoutesByProvinceId(@Param("provinceId") Integer provinceId);
}