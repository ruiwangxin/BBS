package com.bbs.mapper;


import com.bbs.pojo.BbsUser;

/**
 * Dao层
 */

public interface BbsUserMapper {
    //根据ID获取用户所以数据
    BbsUser getBbsUserById(Integer USER_ID);
    //注册用户
    void setBbsUserBy(BbsUser bbsUser);
    //用户登录
    BbsUser getBbsUserBy(BbsUser bbsUser);
    //更新时间
    String setLoginByName(String user_name);
    //修改密码
    void setLoginByPassword(BbsUser bbsUser);
}
