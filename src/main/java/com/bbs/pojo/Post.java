package com.bbs.pojo;

import java.util.Date;

/**
 * 帖子类
 */
public class Post {
    private Integer post_id;    //帖子ID
    private Integer user_id;    //用户ID
    private String post_title;  //帖子题目
    private String post_content;    //帖子内容
//    @JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date post_createtime;   //帖子创建时间
    private Date post_updatetime;   //帖子修改时间
    private BbsUser bbsUser;

    public Post() {
    }

    public Post(Integer post_id, Integer user_id, String post_title, String post_content, Date post_createtime, Date post_updatetime) {
        this.post_id = post_id;
        this.user_id = user_id;
        this.post_title = post_title;
        this.post_content = post_content;
        this.post_createtime = post_createtime;
        this.post_updatetime = post_updatetime;
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

    public String getPost_title() {
        return post_title;
    }

    public void setPost_title(String post_title) {
        this.post_title = post_title;
    }

    public String getPost_content() {
        return post_content;
    }

    public void setPost_content(String post_content) {
        this.post_content = post_content;
    }

    public Date getPost_createtime() {
        return post_createtime;
    }

    public void setPost_createtime(Date post_createtime) {
        this.post_createtime = post_createtime;
    }

    public Date getPost_updatetime() {
        return post_updatetime;
    }

    public void setPost_updatetime(Date post_updatetime) {
        this.post_updatetime = post_updatetime;
    }

    public BbsUser getBbsUser() {
        return bbsUser;
    }

    public void setBbsUser(BbsUser bbsUser) {
        this.bbsUser = bbsUser;
    }

    @Override
    public String toString() {
        return "Post{" +
                "post_id=" + post_id +
                ", user_id=" + user_id +
                ", post_title='" + post_title + '\'' +
                ", post_content='" + post_content + '\'' +
                ", post_createtime=" + post_createtime +
                ", post_updatetime=" + post_updatetime +
                ", bbsUser=" + bbsUser +
                '}';
    }
}
