package com.example.app.common.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.common.dao.ActivityDAOImpl;
import com.example.app.common.pojos.Activity;



@Service
public class ActivityServiceImpl {
 @Autowired
	private ActivityDAOImpl repository;

	public Activity primaryColumnType(Activity activity) {
		// TODO Auto-generated method stub
		return repository.save(activity);
	}

	public Activity delete(Integer id) {
		// TODO Auto-generated method stub
		
		Activity activity =findOne(id);
		if(activity!=null)
		{
			repository.delete(activity);
		}
		return activity;
	}

	public List<Activity> findAll() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	public Activity findOne(Integer id) {
		// TODO Auto-generated method stub
		return repository.findOne(id);
	}

	public Activity update(Activity activity) {
		// TODO Auto-generated method stub
		return repository.save(activity);
	}
		public Activity save(Activity activity) {
		// TODO Auto-generated method stub
		return repository.save(activity);
	}
		
		
		public List<Activity> findByemailId(String emailId)
		{
			return repository.findByemailId(emailId);
		}
		
		}