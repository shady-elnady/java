package com.example;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
    public static void main(String[] args) {
        System.out.println("Testing Spring Configuration...");

        try {
            @SuppressWarnings("resource")
            ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
            HelloService helloService = context.getBean("helloService", HelloService.class);
            System.out.println("Spring Works: " + helloService.getMessage());
        } catch (Exception e) {
            System.err.println("Spring configuration error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}