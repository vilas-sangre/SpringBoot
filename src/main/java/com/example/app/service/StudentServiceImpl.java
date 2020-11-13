package com.example.app.service;

import com.example.app.pojos.Student;import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.app.pojos.Student;
import com.example.app.dao.StudentDAOImpl;
import org.springframework.stereotype.Service;



@Service
public class StudentServiceImpl {
 @Autowired
	private StudentDAOImpl repository;

	public Student primaryColumnType(Student student) {
		// TODO Auto-generated method stub
		return repository.save(student);
	}

	public Student delete(Integer id) {
		// TODO Auto-generated method stub
		
		Student student =findOne(id);
		if(student!=null)
		{
			repository.delete(student);
		}
		return student;
	}

	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	public Student findOne(Integer id) {
		// TODO Auto-generated method stub
		return repository.findOne(id);
	}

	public Student update(Student student) {
		// TODO Auto-generated method stub
		return repository.save(student);
	}
		public Student save(Student student) {
		// TODO Auto-generated method stub
		return repository.save(student);
	}
		}