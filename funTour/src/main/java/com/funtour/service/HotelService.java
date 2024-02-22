package com.funtour.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.funtour.entity.Hotel;
import com.funtour.mapper.HotelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HotelService extends ServiceImpl<HotelMapper, Hotel> {
    @Autowired
    private HotelMapper hotelMapper;

    public List<Hotel> getHotelsByKeyword(String keyword) {
        return hotelMapper.selectByKeyword(keyword);
    }

    public boolean saveHotel(Hotel hotel){
//        if(hotel.getHotelId()==null){
//            return save(hotel);  //mybatis-plus提供的方法表示插入数据
//        }else {
//            return updateById(hotel);
//        }
        return saveOrUpdate(hotel);//直接判断新增还是修改
    }
}
