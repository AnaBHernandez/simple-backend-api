package com.anabelen.simple_backend_api;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "*")
public class GreetingController {

    @GetMapping("/api/hello")
    public String hello() {
        return "Hello from Spring Boot Backend!";
    }
}