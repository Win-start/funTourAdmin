package com.funtour.controller;

import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.funtour.entity.User;
import com.funtour.mapper.UserMapper;
import com.funtour.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RestController
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private UserMapper userMapper;

    //登录
    @PostMapping("/login")
    public Object login(@RequestBody Map<String, String> loginInfo) {
        try {
            String username = loginInfo.get("username");
            String password = loginInfo.get("password");
            User loginUser = userService.login(username, password);
            return loginUser;
        } catch (Exception e) {
            return e.getMessage();
        }
    }

    //注册
    @PostMapping("/register")
    public String register(@RequestBody User user) {
        // 构造查询条件
        QueryWrapper<User> phoneQueryWrapper = new QueryWrapper<>();
        phoneQueryWrapper.eq("phone", user.getPhone());

        QueryWrapper<User> usernameQueryWrapper = new QueryWrapper<>();
        usernameQueryWrapper.eq("username", user.getUsername());

        // 查询是否存在相同的手机号和用户名
        Long phoneCount = userMapper.selectCount(phoneQueryWrapper);
        Long usernameCount = userMapper.selectCount(usernameQueryWrapper);

        // 如果手机号或用户名已经存在，则返回注册失败
        if (phoneCount > 0 && usernameCount > 0) {
            return "用户名与手机号均已存在";
        } else if (phoneCount > 0) {
            // 手机号已经存在
            return "该手机已被注册";
        } else if (usernameCount > 0) {
            // 用户名已经存在
            return "用户名已存在";
        } else {
            // 如果手机号和用户名均不存在，则插入新的用户数据
            return userMapper.insert(user) > 0 ? "success" : "fail";
        }
    }

    //    获取个人信息
    @GetMapping("user/{id}")
    public User getUserId(@PathVariable Integer id) {
        return userService.getUserById(id);
    }

    @PutMapping("update/{id}")
    public boolean updateUserById(@PathVariable Integer id, @RequestBody User user) {
        user.setId(id);
        return userService.updateUser(user);
    }

    @PostMapping("/uploadAvatar/{userId}")
    public ResponseEntity<String> uploadAvatar(@PathVariable("userId") Integer Id,@RequestParam("avatar") MultipartFile file) {
        try {
            // 保存文件到服务器
            String fileName = UserService.saveAvatar(file);
            String fileUrl = "/src/assets/" + fileName; // 假设服务器上的存储路径为 /avatars/
            // 根据传入的 userId 更新 user 表中的 avatarUrl 字段
            userService.updateAvatarUrl(Id, fileUrl);

//            return ResponseEntity.ok(fileUrl);
            HttpHeaders headers = new HttpHeaders();
//            headers.set("message", "Avatar updated successfully");

            // 在响应体中返回重定向地址
            String redirectUrl = "http://localhost:5173/user"; // 假设跳转到用户资料页面
            return ResponseEntity.status(HttpStatus.FOUND)
                    .headers(headers)
                    .location(URI.create(redirectUrl))
                    .build();
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }


    // 后台管理
    // 查询
    @GetMapping("/admin/user")
    public List<User> index() {
        return userService.list();
    }

    @PostMapping("/admin/user")
    //RequestBody把前台json对象转为后台的java对象
    public boolean save(@RequestBody User user) {
        return userService.saveUser(user);
    }

    //删除
    @DeleteMapping("/admin/user/{id}")
    public boolean delete(@PathVariable Integer id) {
        return userService.removeById(id);
    }

    @PostMapping("/admin/user/del/batch")
    public boolean deleteBatch(@RequestBody List<Integer> ids) {
        return userService.removeByIds(ids);
    }
    @GetMapping("/admin/user/page")
    public IPage<User> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize,
                                @RequestParam(defaultValue = "") String username,
                                @RequestParam(defaultValue = "") String phone,
                                @RequestParam(defaultValue = "") String address) {
        IPage<User> page=new Page<>(pageNum,pageSize);
        QueryWrapper<User> queryWrapper=new QueryWrapper<>();
        queryWrapper.like("username",username);
        queryWrapper.like("phone",phone);
        queryWrapper.like("address",address);
        queryWrapper.orderByDesc("id");
        return userService.page(page,queryWrapper);
    }
    // 导出接口
    @GetMapping("/admin/user/export")
    public void export(HttpServletResponse response) throws Exception{
        List<User> list=userService.list();
        //通过工具类创建writer写出到磁盘路径
//        ExcelWriter writer= ExcelUtil.getWriter("磁盘地址");
        //在内存操作，写出到浏览器
        ExcelWriter writer= ExcelUtil.getWriter(true);
//        //自定义标题别名
//        writer.addHeaderAlias("username","用户名");
//        writer.addHeaderAlias("password","密码");
//        writer.addHeaderAlias("sex","性别");
//        writer.addHeaderAlias("email","邮箱");
//        writer.addHeaderAlias("phone","电话");
//        writer.addHeaderAlias("address","地址");
//        writer.addHeaderAlias("createTime","创建时间");
//        writer.addHeaderAlias("avatarUrl","头像");

        //一次性写出list内的对象到excel，使用默认样式，强制输出标题
        writer.write(list,true);

        //设置浏览器响应的格式
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("用户信息","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename="+fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();

    }

    //    导入
    @PostMapping("/admin/user/import")
    public Boolean imp(MultipartFile file) throws Exception{
        InputStream inputStream=file.getInputStream();
        ExcelReader reader=ExcelUtil.getReader(inputStream);
        List<User> list=reader.readAll(User.class);
//        List<User> list=reader.read(0,1,User.class);
        userService.saveBatch(list);
        return true;
    }
}
