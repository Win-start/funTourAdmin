package com.funtour.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.funtour.entity.Order;
import com.funtour.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    // 创建订单接口
    @PostMapping
    public boolean createOrder(@RequestBody Order order) {
        return orderService.createOrder(order);
    }

    @GetMapping("/all/{userId}")
    public List<Order> getOrderDetailsByUserId(@PathVariable Integer userId) {
        return orderService.getOrderDetailsByUserId(userId);
    }

    @PostMapping("/{orderId}/confirm")
    public boolean confirmOrder(@PathVariable Integer orderId) {
        return orderService.confirmOrder(orderId);
    }

    @PostMapping("/{orderId}/cancel")
    public boolean cancelOrder(@PathVariable Integer orderId) {
        return orderService.cancelOrder(orderId);
    }

    //后台管理
    @GetMapping("/admin/page")
    public IPage<Order> list(@RequestParam Integer pageNum,
                             @RequestParam Integer pageSize,
                             @RequestParam(required = false) String username,
                             @RequestParam(required = false) String phone,
                             @RequestParam(required = false) Integer orderId) {
        return orderService.findPage(pageNum, pageSize, username, phone, orderId);
    }

    //删除
    @DeleteMapping("/admin/{id}")
    public boolean delete(@PathVariable Integer id) {
        return orderService.removeById(id);
    }

    @PostMapping("/admin/del/batch")
    public boolean deleteBatch(@RequestBody List<Integer> ids) {
        return orderService.removeByIds(ids);
    }

    @PostMapping("/admin/{orderId}")
    public boolean updateOrderType(@PathVariable Integer orderId, @RequestParam Integer type) {
        return orderService.updateOrderType(orderId, type);
    }
}
