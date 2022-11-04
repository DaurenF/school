package com.javatechie.spring.auth.example.models;

import java.util.Date;


public class Student {

    private int id;
    private String name;
    private String surname;
    private String group_grade;
    private Date birth;

    public Student() {
    }

    public Student(int id, String name, String surname, String group_grade, Date birth) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.group_grade = group_grade;
        this.birth = birth;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getGroup_grade() {
        return group_grade;
    }

    public void setGroup_grade(String group_grade) {
        this.group_grade = group_grade;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }
}
