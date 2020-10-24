package com.hellokoding.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/main")
    public String index(Model model) {
        return "main";
    }

    @GetMapping("/sendReport")
    public String send(Model model) {
        return "send";
    }

    @GetMapping("/game")
    public String game(Model model) {
        return "trashGame";
    }

}
