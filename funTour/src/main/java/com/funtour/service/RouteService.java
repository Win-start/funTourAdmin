package com.funtour.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.funtour.entity.Route;
import com.funtour.mapper.RouteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RouteService extends ServiceImpl<RouteMapper,Route> {

    @Autowired
    private RouteMapper routeMapper;

    public List<Route> getAllRoutes() {
        return routeMapper.selectList(null); // 使用selectList(null)查询全部路由信息
    }
    public Route getRouteById(Long routeId) {
        return routeMapper.selectById(routeId);
    }

    public List<Route> getHotRoutes() {
        return routeMapper.getHotRoutes();
    }

    public List<Route> findRoutesByProvinceId(Integer provinceId) {
        return routeMapper.findRoutesByProvinceId(provinceId);
    }
    public boolean saveRoute(Route route) {
        if (route.getRouteId() == null) {
            return save(route);  //mybatis-plus提供的方法表示插入数据
        } else {
            return updateById(route);
        }
    }
}

