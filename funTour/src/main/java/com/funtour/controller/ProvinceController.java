package com.funtour.controller;

import com.funtour.entity.Province;
import com.funtour.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/provinces")
public class ProvinceController {
    @Autowired
    private ProvinceService provinceService;

    @GetMapping
    public List<Map<String, String>> getAllProvinces() {
        List<Province> provinces = provinceService.getAllProvinces();
        List<Map<String, String>> result = new ArrayList<>();

        for (Province province : provinces) {
            Map<String, String> provinceMap = new HashMap<>();
            provinceMap.put("label", province.getProvinceName());
            provinceMap.put("value", String.valueOf(province.getProvinceId()));
            result.add(provinceMap);
        }

        return result;
    }
}
