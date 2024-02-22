package com.funtour.controller;

import com.funtour.entity.City;
import com.funtour.entity.Province;
import com.funtour.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/city")
public class CityController {
    @Autowired
    private CityService cityService;

    @GetMapping
    public List<City> searchCity(@RequestParam("keyword") String keyword) {
        return cityService.getByKeyword(keyword);
    }

    @GetMapping("/{provinceId}")
    public List<Map<String, String>> getCitiesByProvince(@PathVariable String provinceId) {
        List<City> cities = cityService.getCitiesByProvinceId(provinceId);
        List<Map<String, String>> result = new ArrayList<>();

        for (City city : cities) {
            Map<String, String> cityMap = new HashMap<>();
            cityMap.put("label", city.getCityName());
            cityMap.put("value", String.valueOf(city.getCityId()));
            result.add(cityMap);
        }

        return result;
    }
}