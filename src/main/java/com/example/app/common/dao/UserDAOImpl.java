package com.example.app.common.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.example.app.common.pojos.User;

import org.springframework.data.jpa.repository.JpaRepository;



public interface UserDAOImpl extends JpaRepository<User,Integer> {
	
	@Query("FROM User where user_name=?1 and password=?2")
	public User getUserByUsernameAndPassword(String username, String password);

	@Query("FROM User where user_name=?1")
    public User getUserByUsername(String username);
	
	@Query("FROM User where role=?1")
    public List<User> getUsersByRole(String role);
	
	
	
	}