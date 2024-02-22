package com.funtour.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.funtour.entity.Admin;
import com.funtour.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService extends ServiceImpl<AdminMapper, Admin> {
    @Autowired
    private AdminMapper adminMapper;
    //判断登录状态
    public Admin login(String adminUsername, String adminPassword) {
        Admin admin = adminMapper.selectByname(adminUsername);
        if (admin == null) {
            throw new RuntimeException("用户不存在");
        }
        if (!admin.getAdminPassword().equals(adminPassword)) {
            throw new RuntimeException("密码不正确");
        }
        return admin;
    }

    public boolean saveAdmin(Admin admin){
        return saveOrUpdate(admin);//直接判断新增还是修改
    }
}
