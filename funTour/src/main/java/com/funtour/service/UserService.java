package com.funtour.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.funtour.entity.User;
import com.funtour.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Optional;
import java.util.UUID;

@Service
public class UserService extends ServiceImpl<UserMapper,User> {
    @Autowired
    private UserMapper userMapper;
    //判断登录状态
    public User login(String username,String password){
        User user=userMapper.selectByUsername(username);
        if(user==null){
            throw new RuntimeException("用户不存在");
        }
        if (!user.getPassword().equals(password)){
            throw new RuntimeException("密码不正确");
        }
        return user;
    }

    public User getUserById(Integer id) {
        return userMapper.selectById(id);
    }

    public boolean updateUser(User user) {
        return userMapper.updateUser(user);
    }
    //上传头像
    public static String saveAvatar(MultipartFile file) throws IOException {
        String dirPath = "D:/毕业设计/fun_tour/src/assets/"; // 存储头像的目录，需要提前创建
        String fileName = UUID.randomUUID().toString() + getExtension(file.getOriginalFilename());

        File parentDir = new File(dirPath);
        if (!parentDir.exists()) {
            parentDir.mkdirs();
        }

        File destFile = new File(parentDir, fileName);
        file.transferTo(destFile);

        return fileName;
    }

    private static String getExtension(String filename) {
        int dotIndex = filename.lastIndexOf(".");
        if (dotIndex > -1 && dotIndex < filename.length() - 1) {
            return filename.substring(dotIndex);
        }
        return "";
    }

    public void updateAvatarUrl(Integer userId, String avatarUrl) {
        int rows = userMapper.updateAvatarUrl(userId, avatarUrl);
        if (rows != 1) {
            throw new IllegalArgumentException("Update failed");
        }
    }
    public boolean saveUser(User user){
        if(user.getId()==null){
            return save(user);  //mybatis-plus提供的方法表示插入数据
        }else {
            return updateById(user);
        }
//        return saveOrUpdate(user);//直接判断新增还是修改
    }
}
