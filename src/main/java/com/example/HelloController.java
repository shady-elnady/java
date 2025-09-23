package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

    @Autowired
    private HelloService helloService;

    @GetMapping("/")
    public String home() {
        return "redirect:/index.jsp";
    }

    @GetMapping("/hello")
    public String sayHello(Model model) {
        model.addAttribute("message", helloService.getMessage());
        model.addAttribute("timestamp", new java.util.Date());
        return "hello";
    }

}