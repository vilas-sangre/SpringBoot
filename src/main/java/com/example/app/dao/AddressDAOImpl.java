package com.example.app.dao;

import com.example.app.pojos.Address;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;




public interface AddressDAOImpl extends JpaRepository<Address,Long> {
	}