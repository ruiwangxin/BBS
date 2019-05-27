package com.bbs.service;

import com.bbs.mapper.BbsUserMapper;
import com.bbs.mapper.CommentMapper;
import com.bbs.mapper.PostMapper;
import com.bbs.pojo.BbsUser;
import com.bbs.pojo.Comment;
import com.bbs.pojo.Post;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@org.springframework.stereotype.Service
public class ServiceImpl implements Service {

    @Autowired
    private BbsUserMapper bbsUserMapper;
    @Autowired
    private PostMapper postMapper;
    @Autowired
    private CommentMapper commentMapper;
    @Override
    public BbsUser getBbsUserById(Integer USER_ID) {
        BbsUser bbsUserById = bbsUserMapper.getBbsUserById(USER_ID);
        return bbsUserById;
    }

    //注册用户
    @Override
    public void setBbsUserBy(BbsUser bbsUser) {
        bbsUserMapper.setBbsUserBy(bbsUser);
    }
    //用户登录
    @Override
    public BbsUser getBbsUserBy(BbsUser bbsUser) {
        BbsUser bbsUserBy = bbsUserMapper.getBbsUserBy(bbsUser);
        return bbsUserBy;
    }

    @Override
    public String setLoginByName(String user_name) {
        String date = bbsUserMapper.setLoginByName(user_name);
        return date;
    }
    //获取所以帖子信息
    @Override
    public List<Post> getPostByList(Integer page) {

        List<Post> postByList = postMapper.getPostByList((page-1)*5);
//        Page<Post> page1 = new Page<Post>(8, 1, 5, postByList);
//        System.out.println(page1);
        return postByList;
    }
    //修改密码
    @Override
    public void setLoginByPassword(BbsUser BbsUser) {
        bbsUserMapper.setLoginByPassword(BbsUser);
    }
    //添加用户
    @Override
    public void addPostBy(Post post) {
        postMapper.addPostBy(post);
    }
    //根据条件查询
    @Override
    public List<Post> getPost(Post post)  {

        System.out.println(post.getPost_createtime());
        List<Post> post1 = postMapper.getPost(post);
        return post1;
    }

    @Override
    public List<Comment> getCommentById(Integer id) {
        System.out.println("------------"+commentMapper);
        List<Comment> commentBy = commentMapper.getCommentById(id);
        return commentBy;
    }

    @Override
    public List<Post> getPostByList_id(Integer post_id) {
        List<Post> postByList_id = postMapper.getPostByList_id(post_id);
        return postByList_id;
    }


}
