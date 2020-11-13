package com.example.app.common.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.example.app.common.pojos.UpcomingAnnouncements;

import org.springframework.data.jpa.repository.JpaRepository;



public interface UpcomingAnnouncementsDAOImpl extends JpaRepository<UpcomingAnnouncements,Integer> {
	}