package com.funtour.service;

import com.funtour.entity.Comment;
import com.funtour.mapper.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {

    @Autowired
    private CommentMapper commentMapper;

    public List<Comment> getAllWithUser(Integer provinceId) {
        return commentMapper.findByProvinceId(provinceId);
    }

    public List<Comment> getByTopCountDesc(Integer provinceId) {
        return commentMapper.findByLikeDesc(provinceId);
    }

    // 根据省份名称查询对应省份的 id
    public Integer getProvinceIdByName(String provinceName) {

        return commentMapper.findIdByName(provinceName);
    }

    public void updateCommentLike(Integer cid, Integer cLike) {
        commentMapper.updateCLike(cid, cLike);
    }

    public boolean addComment(Comment comment) {
        return commentMapper.insert(comment)>0;
    }
}
