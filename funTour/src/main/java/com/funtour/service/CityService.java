package com.funtour.service;

import com.funtour.entity.City;
import com.funtour.entity.Province;
import com.funtour.mapper.CityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityService {
    @Autowired
    private CityMapper cityMapper;

    public List<City> getByKeyword(String keyword) {
        return cityMapper.selectByKeyword(keyword);
    }

    public List<City> getCitiesByProvinceId(String provinceId) {
        return cityMapper.selectCitiesByProvinceId(provinceId);
    }
}
