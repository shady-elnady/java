package com.example;

import org.springframework.stereotype.Service;

@Service
public class HelloService {

    public String getMessage() {
        return "Hello from Spring MVC with Tomcat 11!";
    }
}