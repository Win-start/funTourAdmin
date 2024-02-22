package com.funtour.controller;

import com.funtour.entity.Comment;
import com.funtour.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @GetMapping
    public List<Comment> getAll(@RequestParam("provinceName") String  provinceName) {
        // 获取省份 id
        Integer provinceId = commentService.getProvinceIdByName(provinceName);
        return commentService.getAllWithUser(provinceId);
    }

    @GetMapping("/tops")
    public List<Comment> getTop3(@RequestParam("provinceName") String  provinceName) {
        Integer provinceId = commentService.getProvinceIdByName(provinceName);
        return commentService.getByTopCountDesc(provinceId);
    }

    @PostMapping("/clike")
    public boolean updateCommentLike(@RequestBody Map<String, Object> requestBody) {
        Integer cid = (Integer) requestBody.get("cid");
        Integer clike = (Integer) requestBody.get("clike");
        commentService.updateCommentLike(cid, clike);
        return true;
    }

    @PostMapping("/save")
    public boolean addComment(@RequestBody Comment comment) {
        return commentService.addComment(comment);
    }
}
