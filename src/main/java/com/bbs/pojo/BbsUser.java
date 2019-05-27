package com.bbs.pojo;


import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

/**
 * 用户类
 */
public class BbsUser {
    private Integer user_id;    //用户ID
    private String user_name;   //用户姓名
    private String user_password;   //用户密码
    private Date user_registerdate; //用户注册时间
    private Date username_update_time;  //用户姓名修改时间
    private Date user_password_updatetime;  //用户密码修改时间
    @JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date user_logindate; //用户登陆时间
    private String verifyCode;

    public BbsUser() {
    }


    public BbsUser(Integer user_id, String user_name, String user_password, Date user_registerdate, Date username_update_time, Date user_password_updatetime, Date user_logindate, String verifyCode) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_password = user_password;
        this.user_registerdate = user_registerdate;
        this.username_update_time = username_update_time;
        this.user_password_updatetime = user_password_updatetime;
        this.user_logindate = user_logindate;
        this.verifyCode = verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public Date getUser_registerdate() {
        return user_registerdate;
    }

    public void setUser_registerdate(Date user_registerdate) {
        this.user_registerdate = user_registerdate;
    }

    public Date getUsername_update_time() {
        return username_update_time;
    }

    public void setUsername_update_time(Date username_update_time) {
        this.username_update_time = username_update_time;
    }

    public Date getUser_password_updatetime() {
        return user_password_updatetime;
    }

    public void setUser_password_updatetime(Date user_password_updatetime) {
        this.user_password_updatetime = user_password_updatetime;
    }

    public Date getUser_logindate() {
        return user_logindate;
    }

    public void setUser_logindate(Date user_logindate) {

        this.user_logindate = user_logindate;
    }

    @Override
    public String toString() {
        return "BbsUser{" +
                "USER_ID=" + user_id +
                ", USER_NAME='" + user_name + '\'' +
                ", USER_PASSWORD='" + user_password + '\'' +
                ", USER_REGISTERDATE=" + user_registerdate +
                ", USER_NAME_UPDATETIME=" + username_update_time +
                ", USER_PASSWORD_UPDATETIME=" + user_password_updatetime +
                ", USER_LOGINDATE=" + user_logindate +
                '}';
    }
}
