package com.bbs.pojo;

import java.util.Date;

public class Comment {
    private Integer comment_id; //评论id
    private Integer post_id;   //帖子id
    private Integer user_id; //用户id
    private String comment_content;    //帖子内容
    private Date comment_createtime;    //帖子创建时间
    private Date comment_updatetime;    //帖子修改时间
    private BbsUser bbsUser;
    private Post post;

    public Comment() {
    }

    public Comment(Integer comment_id, Integer post_id, Integer user_id, String comment_content, Date comment_createtime, Date comment_updatetime, BbsUser bbsUser, Post post) {
        this.comment_id = comment_id;
        this.post_id = post_id;
        this.user_id = user_id;
        this.comment_content = comment_content;
        this.comment_createtime = comment_createtime;
        this.comment_updatetime = comment_updatetime;
        this.bbsUser = bbsUser;
        this.post = post;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public Integer getComment_id() {
        return comment_id;
    }

    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
    }

    public Integer getPost_id() {
        return post_id;
    }

    public void setPost_id(Integer post_id) {
        this.post_id = post_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }



    public Date getComment_createtime() {
        return comment_createtime;
    }

    public void setComment_createtime(Date comment_createtime) {
        this.comment_createtime = comment_createtime;
    }

    public Date getComment_updatetime() {
        return comment_updatetime;
    }

    public void setComment_updatetime(Date comment_updatetime) {
        this.comment_updatetime = comment_updatetime;
    }

    public BbsUser getBbsUser() {
        return bbsUser;
    }

    public void setBbsUser(BbsUser bbsUser) {
        this.bbsUser = bbsUser;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "comment_id=" + comment_id +
                ", post_id=" + post_id +
                ", user_id=" + user_id +
                ", comment_content='" + comment_content + '\'' +
                ", comment_createtime=" + comment_createtime +
                ", comment_updatetime=" + comment_updatetime +
                ", bbsUser=" + bbsUser +
                ", post=" + post +
                '}';
    }
}
