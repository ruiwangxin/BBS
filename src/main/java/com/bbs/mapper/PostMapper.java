package com.bbs.mapper;



import com.bbs.pojo.Post;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 帖子的Dao层
 */
public interface PostMapper {
    //查询帖子
    List<Post> getPostByList(@Param("page") Integer page);
    //添加帖子
    void addPostBy(Post post);

    //根据条件查询
    List<Post> getPost(Post post);

    List<Post> getPostByList_id(@Param("post_id") Integer post_id);
}
