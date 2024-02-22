package com.funtour.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.funtour.entity.Collect;
import com.funtour.mapper.CollectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectService {
    @Autowired
    private CollectMapper collectMapper;
    public boolean addCollect(Collect collect) {
        return collectMapper.insert(collect)>0;
    }

    public boolean delCollect(Collect collect){
        QueryWrapper<Collect> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", collect.getUserId())
                .eq("scenic_id", collect.getScenicId());
        return collectMapper.delete(wrapper)>0;
    }

    public List<Collect> getAllCollect(Integer userId) {
        return collectMapper.getAllCollect(userId);
    }
}
