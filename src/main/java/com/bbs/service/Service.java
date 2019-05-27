package com.bbs.service;

import com.bbs.pojo.BbsUser;
import com.bbs.pojo.Comment;
import com.bbs.pojo.Post;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Service {
    BbsUser getBbsUserById(Integer USER_ID);
    //添加用户
    void setBbsUserBy(BbsUser bbsUser);
    //用户登录
    BbsUser getBbsUserBy(BbsUser bbsUser);
    //更新时间
    String setLoginByName(String user_name);
    //获取所有帖子信息
    List<Post> getPostByList(Integer page);
    //修改密码
    void setLoginByPassword(BbsUser BbsUser);
    //添加帖子
    void addPostBy(Post post);
    //根据条件进行查询
    List<Post> getPost(Post post);

    //根据帖子ID查询有多想跟帖
    List<Comment> getCommentById(Integer id);

    //根据POST_ID获取被回复的贴子信息
    List<Post> getPostByList_id(@Param("post_id") Integer post_id);
}
