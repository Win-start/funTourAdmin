package com.funtour.controller;

import cn.hutool.json.JSONObject;
import com.funtour.entity.Admin;
import com.funtour.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;
    @PostMapping("/login")
    public Object login(@RequestBody Map<String, String> loginInfo) {
        try {
            String adminUsername = loginInfo.get("adminUsername");
            String adminPassword = loginInfo.get("adminPassword");
            Admin loginAdmin = adminService.login(adminUsername, adminPassword);
            return loginAdmin;
        } catch (Exception e) {
            JSONObject errorObject = new JSONObject();
            errorObject.put("error", e.getMessage());
            return errorObject.toString();
        }
    }
    @PostMapping("/save")
    public boolean save(@RequestBody Admin admin) {
        return adminService.saveAdmin(admin);
    }
}
