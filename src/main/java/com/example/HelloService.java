package com.example;

public class HelloService {
    private String message;

    public void setMessage(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }

    public void sayHello() {
        System.out.println("Spring says: " + message);
    }

    public String getHtmlMessage() {
        return "<h3>" + message + "</h3><p>Current time: " + new java.util.Date() + "</p>";
    }
}