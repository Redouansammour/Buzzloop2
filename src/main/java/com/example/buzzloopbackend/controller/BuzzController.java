package com.example.buzzloopbackend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class BuzzController {

    @GetMapping("/api/buzzes")
    public List<String> getBuzzes() {
        List<String> buzzes = new ArrayList<>();
        buzzes.add("Buzz 1: Lorem ipsum dolor sit amet");
        buzzes.add("Buzz 2: Consectetur adipiscing elit");
        buzzes.add("Buzz 3: Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua");
        return buzzes;
    }
}
