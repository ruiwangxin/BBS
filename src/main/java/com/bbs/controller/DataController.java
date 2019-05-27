package com.bbs.controller;

import com.bbs.pojo.BbsUser;
import com.bbs.pojo.Comment;
import com.bbs.pojo.Post;
import com.bbs.service.Service;
import com.bbs.uility.Page;
import com.bbs.uility.Security;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RestController
public class DataController {
    @Autowired
    private Service service;
    @Autowired
    private  HttpSession session;
    @RequestMapping("/DataUser")
    public BbsUser DataUser() {
        BbsUser bbsUserById = service.getBbsUserById(1);
        System.out.println(bbsUserById);
        return bbsUserById;
    }
    //注册用户
    @RequestMapping("/add")
    public Boolean addBbsUser(@RequestBody BbsUser bbsUser) {

        String verifyCode = bbsUser.getVerifyCode();
        String code = (String) session.getAttribute("code");
        System.out.println(bbsUser.getUser_name()+"======="+bbsUser.getUser_password()+"========="+verifyCode);
        if(code.equals(verifyCode))
        {
            service.setBbsUserBy(bbsUser);
            return true;
        }else{
            return false;
        }
    }
    /**
     * 验证码处理
     * @param response
     * @throws IOException
     */
    @RequestMapping("/getVerifyCode")
    public void generate(HttpServletResponse response) throws IOException {
         Security.securityImage(response, session);

    }

    //登陆用户
    @RequestMapping("/Login")
    public Object LoginUser(@RequestBody BbsUser bbsUser) {
        BbsUser bbsUserBy;
        if (bbsUser.getVerifyCode().equals(session.getAttribute("code"))) {
            try {
                bbsUserBy  = service.getBbsUserBy(bbsUser);
                session.setAttribute("bbsUserBy",bbsUserBy);
                return bbsUserBy;
            }catch (Exception ex)
            {
                return null;
            }
        } else {
            return 0;
        }
    }

    //登陆成功后传入新界面数据
    @RequestMapping("/main")
    public Object main() {
        BbsUser bbsUserBy = (BbsUser) session.getAttribute("bbsUserBy");
        return bbsUserBy;
    }

    //获取所有帖子
    @RequestMapping("/postByList")
    public List<Post> postByList()
    {

        List<Post> postByList = service.getPostByList(1);
//        for(Post post : postByList)
//        {
//            System.out.println(post);
//        }
        return postByList;
    }
    @RequestMapping("/item")
    public void getItem(String post_title,String post_content,String post_createtime,String user_name)
    {
        System.out.println(post_title+":"+post_content+":"+post_createtime+":"+user_name);
    }
    //密码修改
    @RequestMapping("/setLoginByPassword")
    public Object setLoginByPassword(@RequestParam("newPwd") String user_password, @RequestParam("checkNewPwd") String checkNewPwd)
    {
        BbsUser bbsUserBy = (BbsUser) session.getAttribute("bbsUserBy");
        System.out.println(bbsUserBy.getUser_id()+"=========="+user_password+"========="+checkNewPwd);
        bbsUserBy.setUser_password(user_password);
        service.setLoginByPassword(bbsUserBy);
        return bbsUserBy;
    }
    //添加帖子
    @RequestMapping("/addPost")
    public void addPost(@RequestBody Post posts)
    {
        BbsUser bbsUserBy = (BbsUser) session.getAttribute("bbsUserBy");
        posts.setUser_id(bbsUserBy.getUser_id());
        System.out.println(posts);
        service.addPostBy(posts);
    }
    @RequestMapping("/getPost")
    public List<Post> getPost(@RequestBody Post post){
        List<Post> post1 = service.getPost(post);
        return post1;
    }

    @RequestMapping("/getComment")
    public List<Comment> getComment(@RequestParam("post_id") Integer post_id)
    {
        return service.getCommentById(post_id);
    }
    @RequestMapping("/postByList_id")
    public List<Post> postByList_id(@RequestParam("post_id") Integer post_id)
    {
        return service.getPostByList_id(post_id);
    }
    @RequestMapping("/page")
    public Page getPage(@RequestBody Page page)
    {
        if(page.getPage() < 3)
        {
            int i = page.getPage() + 1;
            page.setPage(i);
            return page;
        }
        return page;
    }
}
