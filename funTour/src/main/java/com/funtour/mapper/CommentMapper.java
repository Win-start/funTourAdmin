package com.funtour.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.funtour.entity.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface CommentMapper extends BaseMapper<Comment> {

    @Select("SELECT c.*, u.username, u.avatar_url FROM comment c INNER JOIN user u ON c.user_id = u.id WHERE c.province_id = #{provinceId}")
    List<Comment> findByProvinceId(@Param("provinceId") Integer provinceId);

    @Select("SELECT c.*, u.username, u.avatar_url FROM comment c INNER JOIN user u ON c.user_id = u.id WHERE c.province_id = #{provinceId} ORDER BY c.c_like DESC limit 3;")
    List<Comment> findByLikeDesc(@Param("provinceId") Integer provinceId);

    @Select("SELECT province_id FROM province WHERE province_name LIKE CONCAT('%', #{provinceName}, '%')")
    Integer findIdByName(@Param("provinceName") String provinceName);

    @Update("UPDATE comment SET c_like = #{cLike} WHERE c_id = #{cid}")
    int updateCLike(@Param("cid") Integer cid, @Param("cLike") Integer cLike);


}
