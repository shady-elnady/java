package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

    private final HelloService helloService;

    public HelloController(HelloService helloService) {
        this.helloService = helloService;
    }

    @GetMapping("/")
    public String home() {
        return "index"; // This will show index.jsp directly
    }

    @GetMapping("/hello")
    public String sayHello(Model model) {
        model.addAttribute("message", helloService.getMessage());
        model.addAttribute("timestamp", new java.util.Date());
        return "hello";
    }
}