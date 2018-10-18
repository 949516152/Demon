package com.libf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class MyController {

    @RequestMapping("/user.do")
    public void getString(){

        System.out.println("测试");
    }
}
