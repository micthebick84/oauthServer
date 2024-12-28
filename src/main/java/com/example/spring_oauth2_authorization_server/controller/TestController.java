package com.example.spring_oauth2_authorization_server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {


    @GetMapping("/test")
    public String test() {
        System.out.println("test...");
        return "index";
    }

}
