package com.example.app.dao;

import com.example.app.pojos.Person;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;




public interface PersonDAOImpl extends JpaRepository<Person,Long> {
	}