package com.funtour.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.funtour.entity.RouteImg;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RouteImgMapper extends BaseMapper<RouteImg> {
    default List<RouteImg> getRouteImgsByRouteId(Long routeId) {
        QueryWrapper<RouteImg> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("route_id", routeId);
        return selectList(queryWrapper);
    }
}
