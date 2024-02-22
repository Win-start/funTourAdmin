package com.funtour.service;

import com.funtour.entity.Province;
import com.funtour.mapper.ProvinceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProvinceService {
    @Autowired
    private ProvinceMapper provinceMapper;

    public List<Province> getAllProvinces() {
        return provinceMapper.selectList(null);
    }
}
