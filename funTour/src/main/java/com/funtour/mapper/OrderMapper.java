package com.funtour.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.funtour.entity.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface OrderMapper extends BaseMapper<Order> {
    @Select("SELECT o.*,r.* FROM `orders` o JOIN route r ON o.route_id = r.route_id WHERE o.user_id = #{userId}")
    List<Order> selectOrderDetailsByUserId(@Param("userId") Integer userId);

    @Update("UPDATE `orders` SET type = 2 WHERE order_id = #{orderId}")
    int confirmOrder(@Param("orderId") Integer orderId);

    @Update("UPDATE `orders` SET type = 0 WHERE order_id = #{orderId}")
    int cancelOrder(@Param("orderId") Integer orderId);

    IPage<Order> findPage(Page<Order> page, @Param("username") String username,
                          @Param("phone") String phone, @Param("orderId") Integer orderId);
}
