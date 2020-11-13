package com.example.app.service;

import com.example.app.pojos.Product;import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.app.pojos.Product;
import com.example.app.dao.ProductDAOImpl;
import org.springframework.stereotype.Service;



@Service
public class ProductServiceImpl {
 @Autowired
	private ProductDAOImpl repository;

	public Product primaryColumnType(Product product) {
		// TODO Auto-generated method stub
		return repository.save(product);
	}

	public Product delete(String id) {
		// TODO Auto-generated method stub
		
		Product product =findOne(id);
		if(product!=null)
		{
			repository.delete(product);
		}
		return product;
	}

	public List<Product> findAll() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	public Product findOne(String id) {
		// TODO Auto-generated method stub
		return repository.findOne(id);
	}

	public Product update(Product product) {
		// TODO Auto-generated method stub
		return repository.save(product);
	}
		public Product save(Product product) {
		// TODO Auto-generated method stub
		return repository.save(product);
	}
		}