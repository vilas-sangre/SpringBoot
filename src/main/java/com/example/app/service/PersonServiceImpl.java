package com.example.app.service;

import com.example.app.pojos.Person;import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.app.pojos.Person;
import com.example.app.dao.PersonDAOImpl;
import org.springframework.stereotype.Service;



@Service
public class PersonServiceImpl {
 @Autowired
	private PersonDAOImpl repository;

	public Person primaryColumnType(Person person) {
		// TODO Auto-generated method stub
		return repository.save(person);
	}

	public Person delete(Long id) {
		// TODO Auto-generated method stub
		
		Person person =findOne(id);
		if(person!=null)
		{
			repository.delete(person);
		}
		return person;
	}

	public List<Person> findAll() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	public Person findOne(Long id) {
		// TODO Auto-generated method stub
		return repository.findOne(id);
	}

	public Person update(Person person) {
		// TODO Auto-generated method stub
		return repository.save(person);
	}
		public Person save(Person person) {
		// TODO Auto-generated method stub
		return repository.save(person);
	}
		}