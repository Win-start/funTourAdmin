package com.funtour.service;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.funtour.entity.Order;
import com.funtour.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService extends ServiceImpl<OrderMapper, Order> {
    @Autowired
    private OrderMapper orderMapper;

    public boolean createOrder(Order order) {
        // 插入Order记录到数据库
        int result = orderMapper.insert(order);
        return result > 0;
    }

    public List<Order> getOrderDetailsByUserId(Integer userId) {
        return orderMapper.selectOrderDetailsByUserId(userId);
    }

    public boolean confirmOrder(Integer orderId) {
        int result = orderMapper.confirmOrder(orderId);
        return result == 1;
    }

    public boolean cancelOrder(Integer orderId) {
        int result = orderMapper.cancelOrder(orderId);
        return result == 1;
    }

    public IPage<Order> findPage(Integer pageNum, Integer pageSize, String username, String phone, Integer orderId) {
        Page<Order> page = new Page<>(pageNum, pageSize);
        return orderMapper.findPage(page, username, phone, orderId);
    }

    public boolean updateOrderType(Integer orderId, Integer type) {
        UpdateWrapper<Order> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("order_id", orderId)
                .set("type", type);
        return orderMapper.update(null, updateWrapper) > 0;
    }
}
