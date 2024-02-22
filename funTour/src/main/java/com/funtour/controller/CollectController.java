package com.funtour.controller;

import com.funtour.entity.Collect;
import com.funtour.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/collects")
public class CollectController {
    @Autowired
    private CollectService collectService;

    @PostMapping("/save")
    public boolean addCollect(@RequestBody Collect collect) {
        return collectService.addCollect(collect);
    }
    @PostMapping ("/del")
    public boolean delCollect(@RequestBody Collect collect) {
        return collectService.delCollect(collect);
    }
    @GetMapping("/all/{userId}")
    public List<Collect> getAllCollect(@PathVariable Integer userId) {
        return collectService.getAllCollect(userId);
    }
}