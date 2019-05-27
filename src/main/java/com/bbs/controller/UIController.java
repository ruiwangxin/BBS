package com.bbs.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
public class UIController {

    @RequestMapping({"/index","/"})
    public String index() throws IOException {
        return "login";
    }




}
