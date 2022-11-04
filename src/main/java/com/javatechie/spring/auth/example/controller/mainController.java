package com.javatechie.spring.auth.example.controller;

import com.javatechie.spring.auth.example.models.Student;
import com.javatechie.spring.auth.example.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class mainController {

    @GetMapping("/")
    public String login(){
        return "authenticated successfully" ;
    }
}
