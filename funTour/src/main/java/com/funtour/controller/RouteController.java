package com.funtour.controller;

import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.funtour.entity.Route;
import com.funtour.entity.RouteImg;
import com.funtour.mapper.RouteImgMapper;
import com.funtour.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("/route")
public class RouteController {

    @Autowired
    private RouteService routeService;
    @Autowired
    private RouteImgMapper routeImgMapper;

    @GetMapping
    public List<Route> getAllRoutes() {
        return routeService.getAllRoutes();
    }

    @GetMapping("/{routeId}")
    public Route getRouteById(@PathVariable Long routeId) {
        return routeService.getRouteById(routeId);
    }

    @GetMapping("/{routeId}/img")
    public List<RouteImg> getRouteImagesByRouteId(@PathVariable Long routeId) {
        return routeImgMapper.getRouteImgsByRouteId(routeId);
    }

    @GetMapping("/hot")
    public List<Route> getFirstEightRoutes() {
        return routeService.getHotRoutes();
    }

    @GetMapping("/all/{provinceId}")
    public List<Route> getRoutesByProvince(@PathVariable Integer provinceId) {
        return routeService.findRoutesByProvinceId(provinceId);
    }

    //admin
    @GetMapping("/admin/page")
    public IPage<Route> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize,
                                  @RequestParam(defaultValue = "") String routeName) {
        IPage<Route> page=new Page<>(pageNum,pageSize);
        QueryWrapper<Route> queryWrapper=new QueryWrapper<>();
        queryWrapper.like("route_name",routeName);
        queryWrapper.orderByDesc("route_id");
        return routeService.page(page,queryWrapper);
    }
    @PostMapping("/admin")
    public boolean save(@RequestBody Route route) {
        return routeService.saveRoute(route);
    }
    //删除
    @DeleteMapping("/admin/{id}")
    public boolean delete(@PathVariable Integer id) {
        return routeService.removeById(id);
    }

    @PostMapping("/admin/del/batch")
    public boolean deleteBatch(@RequestBody List<Integer> ids) {
        return routeService.removeByIds(ids);
    }
    @PostMapping("/uploadAvatar/{routeId}")
    public String uploadAvatar(@PathVariable Integer routeId, @RequestParam("avatar") MultipartFile file) throws IOException {
        String directory = "static/img/route";
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
        String fileUrl = "/img/route/"  + fileName;
        System.out.printf(fileName,fileName);
        Route route = routeService.getById(routeId);
        route.setRImage(fileUrl);
        routeService.updateById(route);
        return fileUrl;
    }
    // 导出接口
    @GetMapping("/admin/export")
    public void export(HttpServletResponse response) throws Exception{
        List<Route> list=routeService.list();
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
        List<Route> list=reader.readAll(Route.class);
        routeService.saveBatch(list);
        return true;
    }

}
