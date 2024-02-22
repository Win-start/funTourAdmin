package com.funtour.controller;

import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.funtour.entity.AllScenic;
import com.funtour.entity.Hotel;
import com.funtour.entity.Scenic;
import com.funtour.mapper.AllScenicMapper;
import com.funtour.service.ScenicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;


@RestController
@RequestMapping("/scenic")
public class ScenicController {

    @Autowired
    private AllScenicMapper allScenicMapper;
    @Autowired
    private ScenicService scenicService;

    @GetMapping("/search")
    public List<AllScenic> getCitiesByKeyword(@RequestParam("keyword") String keyword) {
        QueryWrapper<AllScenic> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("province_name", keyword)
                .or().like("city_name", keyword).orderByDesc("scenic_star").last("limit 4");

        return allScenicMapper.selectList(queryWrapper);
    }

    @GetMapping("/all")
    public List<AllScenic> getAll(@RequestParam("keyword") String keyword) {
        QueryWrapper<AllScenic> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("province_name", keyword)
                .or().like("city_name", keyword);

        return allScenicMapper.selectList(queryWrapper);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Scenic> getProductById(@PathVariable Integer id) {
        Scenic scenic = scenicService.getScenicById(id);
        if (scenic != null) {
            return ResponseEntity.ok(scenic);
        } else {
            return ResponseEntity.notFound().build();
        }
    }
    //admin
    @PostMapping("/admin")
    public boolean save(@RequestBody Scenic scenic) {
        return scenicService.saveScenic(scenic);
    }
    @GetMapping("/admin/page")
    public IPage<Scenic> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize,
                                 @RequestParam(defaultValue = "") String scenicName,
                                 @RequestParam(defaultValue = "") String scenicAddress) {
        IPage<Scenic> page=new Page<>(pageNum,pageSize);
        QueryWrapper<Scenic> queryWrapper=new QueryWrapper<>();
        queryWrapper.like("scenic_name",scenicName);
        queryWrapper.like("scenic_address",scenicAddress);
        queryWrapper.orderByDesc("scenic_id");
        return scenicService.page(page,queryWrapper);
    }
    //删除
    @DeleteMapping("/admin/{id}")
    public boolean delete(@PathVariable Integer id) {
        return scenicService.removeById(id);
    }

    @PostMapping("/admin/del/batch")
    public boolean deleteBatch(@RequestBody List<Integer> ids) {
        return scenicService.removeByIds(ids);
    }
    @PostMapping("/uploadAvatar/{scenicId}")
    public String uploadAvatar(@PathVariable Integer scenicId, @RequestParam("avatar") MultipartFile file) throws IOException {
        // 保存文件到 static/img/hotel 目录下src/main/resources/static/img/hotel/
        String directory = "static/img/scenic";
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
        String fileUrl = "/img/scenic/"  + fileName;
        System.out.printf(fileName,fileName);
        Scenic scenic = scenicService.getById(scenicId);
        scenic.setImgUrl(fileUrl);
        scenicService.updateById(scenic);
        return fileUrl;
    }
    // 导出接口
    @GetMapping("/admin/export")
    public void export(HttpServletResponse response) throws Exception{
        List<Scenic> list=scenicService.list();
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
        List<Scenic> list=reader.readAll(Scenic.class);
//        List<hotel> list=reader.read(0,1,hotel.class);
        scenicService.saveBatch(list);
        return true;
    }
}
