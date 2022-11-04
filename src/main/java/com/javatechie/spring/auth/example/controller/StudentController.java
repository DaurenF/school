package com.javatechie.spring.auth.example.controller;


import com.javatechie.spring.auth.example.models.Student;
import com.javatechie.spring.auth.example.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/home")
@CrossOrigin(origins = "*")
public class StudentController {
    private final StudentService studentService;
    @Autowired
    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping
    private List<Student> getAll(){
        return studentService.getAll();
    }
    @PostMapping("/add")
    private ResponseEntity<HttpStatus> addStudent(@RequestBody Student student){
        studentService.save(student);
        return ResponseEntity.ok(HttpStatus.OK);
    }
    @GetMapping("/{id}")
    private Student getById(@PathVariable("id") int id){
        return studentService.getById(id);
    }



    @DeleteMapping("/{id}/delete")
    public ResponseEntity<HttpStatus> deleteStudent(@PathVariable int id){
        studentService.delete(id);
        return ResponseEntity.ok(HttpStatus.OK);
    }



}
