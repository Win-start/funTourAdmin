package com.funtour.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.funtour.entity.Scenic;
import com.funtour.mapper.ScenicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScenicService extends ServiceImpl<ScenicMapper, Scenic> {
    @Autowired
    private ScenicMapper scenicMapper;

    public Scenic getScenicById(Integer id) {
        return scenicMapper.selectScenicById(id);
    }

    public boolean saveScenic(Scenic scenic) {
        if (scenic.getScenicId() == null) {
            return save(scenic);  //mybatis-plus提供的方法表示插入数据
        } else {
            return updateById(scenic);
        }
//        return saveOrUpdate(scenic);//直接判断新增还是修改
    }
}
