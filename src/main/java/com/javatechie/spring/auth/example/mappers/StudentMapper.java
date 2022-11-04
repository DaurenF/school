package com.javatechie.spring.auth.example.mappers;


import com.javatechie.spring.auth.example.models.Student;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface StudentMapper {
    @Select("Select *FROM Student")
    @Results({
            @Result(property = "name", column = "name"),
            @Result(property = "surname", column = "surname"),
            @Result(property = "group_grade", column = "group_grade"),
            @Result(property = "birth", column = "birth")
    })
    List<Student> getAll();
    @Select("Select *FRom Student Where id = #{id}")
    Student getById(int id);
    @Insert("Insert into Student (name, surname , group_grade, birth) Values (#{name}, #{surname}, #{group_grade}, #{birth})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    void save(Student student);

    @Delete("Delete FROM Student Where id = #{id}")
    void delete(int id);
}
