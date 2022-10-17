package rikkei.academy.service;

import rikkei.academy.model.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentServiceIMPL implements IStudentService{
   public static List<Student> studentList = new ArrayList<>();
   static {
       studentList.add(new Student(1L,"Nam ","nam22@gmail.com","Ha Noi"));
       studentList.add(new Student(2L,"Tung","tung123@gmail.com","Thanh Hoa"));
       studentList.add(new Student(3L,"Kien","kien71077@gmail.com","Ha Noi"));
   }

    @Override
    public List<Student> findAll() {
        return studentList;
    }

    @Override
    public Student findById(Long id) {
        return studentList.get(Math.toIntExact(id));
    }
}
