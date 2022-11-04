package com.javatechie.spring.auth.example.services;


import com.javatechie.spring.auth.example.mappers.StudentMapper;
import com.javatechie.spring.auth.example.models.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentService {
    private final StudentMapper studentMapper;
    @Autowired
    public StudentService(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    public List<Student> getAll(){
        return studentMapper.getAll();
    }

    public Student getById(int id){
        return studentMapper.getById(id);
    }


    public void save(Student student) {
        studentMapper.save(student);
    }

    public void delete(int id) {
        studentMapper.delete(id);
    }
}
