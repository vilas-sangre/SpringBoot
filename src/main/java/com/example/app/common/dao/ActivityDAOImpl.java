package com.example.app.common.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.example.app.common.pojos.Activity;

import org.springframework.data.jpa.repository.JpaRepository;



public interface ActivityDAOImpl extends JpaRepository<Activity,Integer> {
	
	public List<Activity> findByemailId(String emailId);
	
	}