package com.example.app.common.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.common.dao.UpcomingAnnouncementsDAOImpl;
import com.example.app.common.pojos.UpcomingAnnouncements;



@Service
public class UpcomingAnnouncementsServiceImpl {
 @Autowired
	private UpcomingAnnouncementsDAOImpl repository;

	public UpcomingAnnouncements primaryColumnType(UpcomingAnnouncements upcomingAnnouncements) {
		// TODO Auto-generated method stub
		return repository.save(upcomingAnnouncements);
	}

	public UpcomingAnnouncements delete(Integer id) {
		// TODO Auto-generated method stub
		
		UpcomingAnnouncements upcomingAnnouncements =findOne(id);
		if(upcomingAnnouncements!=null)
		{
			repository.delete(upcomingAnnouncements);
		}
		return upcomingAnnouncements;
	}

	public List<UpcomingAnnouncements> findAll() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	public UpcomingAnnouncements findOne(Integer id) {
		// TODO Auto-generated method stub
		return repository.findOne(id);
	}

	public UpcomingAnnouncements update(UpcomingAnnouncements upcomingAnnouncements) {
		// TODO Auto-generated method stub
		return repository.save(upcomingAnnouncements);
	}
		public UpcomingAnnouncements save(UpcomingAnnouncements upcomingAnnouncements) {
		// TODO Auto-generated method stub
		return repository.save(upcomingAnnouncements);
	}
		}