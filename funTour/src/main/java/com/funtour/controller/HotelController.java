package com.funtour.controller;

import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.funtour.entity.Hotel;
import com.funtour.entity.User;
import com.funtour.service.HotelService;
import com.funtour.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/hotel")
public class HotelController {
    @Autowired
    private HotelService hotelService;

    @GetMapping("/search")
    public List<Hotel> searchHotels(@RequestParam(value = "keyword", required = false) String keyword) {
        List<Hotel> hotels;
        if (StringUtils.isNotBlank(keyword)) {
            hotels = hotelService.getHotelsByKeyword(keyword);
        } else {
            // 如果参数为空，返回空列表
            hotels = Collections.emptyList();
        }
        return hotels;
    }

    //后台管理
    //新增修改
    @PostMapping("/admin")
    //RequestBody把前台json对象转为后台的java对象
    public boolean save(@RequestBody Hotel hotel) {
        return hotelService.saveHotel(hotel);
    }
    //删除
    @DeleteMapping("/admin/{id}")
    public boolean delete(@PathVariable Integer id) {
        return hotelService.removeById(id);
    }

    @PostMapping("/admin/del/batch")
    public boolean deleteBatch(@RequestBody List<Integer> ids) {
        return hotelService.removeByIds(ids);
    }
    @GetMapping("/admin/page")
    public IPage<Hotel> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize,
                                @RequestParam(defaultValue = "") String hotelname,
                                @RequestParam(defaultValue = "") String address) {
        IPage<Hotel> page=new Page<>(pageNum,pageSize);
        QueryWrapper<Hotel> queryWrapper=new QueryWrapper<>();
        queryWrapper.like("hotel_name",hotelname);
        queryWrapper.like("hotel_address",address);
        queryWrapper.orderByDesc("hotel_id");
        return hotelService.page(page,queryWrapper);
    }
    // 导出接口
    @GetMapping("/admin/export")
    public void export(HttpServletResponse response) throws Exception{
        List<Hotel> list=hotelService.list();
        //通过工具类创建writer写出到磁盘路径
//        ExcelWriter writer= ExcelUtil.getWriter("磁盘地址");
        //在内存操作，写出到浏览器
        ExcelWriter writer= ExcelUtil.getWriter(true);
//        //自定义标题别名
//        writer.addHeaderAlias("hotelname","酒店名");
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
    @PostMapping("/admin/import")
    public Boolean imp(MultipartFile file) throws Exception{
        InputStream inputStream=file.getInputStream();
        ExcelReader reader=ExcelUtil.getReader(inputStream);
        List<Hotel> list=reader.readAll(Hotel.class);
//        List<hotel> list=reader.read(0,1,hotel.class);
        hotelService.saveBatch(list);
        return true;
    }

    @PostMapping("/uploadAvatar/{hotelId}")
    public String uploadAvatar(@PathVariable Integer hotelId, @RequestParam("avatar") MultipartFile file) throws IOException {
        // 保存文件到 static/img/hotel 目录下src/main/resources/static/img/hotel/
        String directory = "static/img/hotel";
        String originalFileName = file.getOriginalFilename();
        int dotIndex = originalFileName.lastIndexOf(".");
        String extension = "";
        if (dotIndex > 0) {
            extension = originalFileName.substring(dotIndex + 1);
        }
        String fileName = UUID.randomUUID().toString() + "." + extension;
        Path path = Paths.get(directory, fileName);
        Files.createDirectories(path.getParent());
        Files.write(path, file.getBytes());

        // 更新酒店图片路径
        String fileUrl = "/img/hotel/"  + fileName;
        System.out.printf(fileName,fileName);
        Hotel hotel = hotelService.getById(hotelId);
        hotel.setHotelImg(fileUrl);
        hotelService.updateById(hotel);
        return fileUrl;
    }
}