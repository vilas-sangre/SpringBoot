package com.example.app.common.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.common.dao.UserDAOImpl;
import com.example.app.common.pojos.User;

@Service
public class UserServiceImpl {
	@Autowired
	private UserDAOImpl repository;

	public User primaryColumnType(User user) {
		// TODO Auto-generated method stub
		return repository.save(user);
	}

	public User delete(Integer id) {
		// TODO Auto-generated method stub

		User user = findOne(id);
		if (user != null) {
			repository.delete(user);
		}
		return user;
	}

	public List<User> findAll() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	public User findOne(Integer id) {
		// TODO Auto-generated method stub
		return repository.findOne(id);
	}

	public User update(User user) {
		// TODO Auto-generated method stub
		return repository.save(user);
	}

	public User save(User user) {
		// TODO Auto-generated method stub
		return repository.save(user);
	}

	public User getUserByUsernameAndPassword(String username, String password) {
		return repository.getUserByUsernameAndPassword(username, password);
	}

	public User getUserByUsername(String username) {
		return repository.getUserByUsername(username);
	}
	
	public List<User> getUsersByRole(String role)
	{
		return repository.getUsersByRole(role);
	}

}