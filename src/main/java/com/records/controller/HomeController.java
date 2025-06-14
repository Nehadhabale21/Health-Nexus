package com.records.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/index")
    public String showIndexPage() {
        return "index"; 
    }

    @GetMapping("/")
    public String redirectToIndex() {
        return "redirect:/index";
    }
}

