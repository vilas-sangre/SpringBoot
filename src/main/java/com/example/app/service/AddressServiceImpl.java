package com.example.app.service;

import com.example.app.pojos.Address;import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.app.pojos.Address;
import com.example.app.dao.AddressDAOImpl;
import org.springframework.stereotype.Service;



@Service
public class AddressServiceImpl {
 @Autowired
	private AddressDAOImpl repository;

	public Address primaryColumnType(Address address) {
		// TODO Auto-generated method stub
		return repository.save(address);
	}

	public Address delete(Long id) {
		// TODO Auto-generated method stub
		
		Address address =findOne(id);
		if(address!=null)
		{
			repository.delete(address);
		}
		return address;
	}

	public List<Address> findAll() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	public Address findOne(Long id) {
		// TODO Auto-generated method stub
		return repository.findOne(id);
	}

	public Address update(Address address) {
		// TODO Auto-generated method stub
		return repository.save(address);
	}
		public Address save(Address address) {
		// TODO Auto-generated method stub
		return repository.save(address);
	}
		}