package com.example.app.dao;

import com.example.app.pojos.Student;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;




public interface StudentDAOImpl extends JpaRepository<Student,Integer> {
	}