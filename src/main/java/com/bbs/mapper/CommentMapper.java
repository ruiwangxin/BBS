package com.bbs.mapper;

import com.bbs.pojo.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {
    List<Comment> getCommentById(@Param("post_id") Integer post_id);
}
