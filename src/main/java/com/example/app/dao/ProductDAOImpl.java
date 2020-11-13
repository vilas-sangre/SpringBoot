package com.example.app.dao;

import com.example.app.pojos.Product;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;




public interface ProductDAOImpl extends JpaRepository<Product,String> {
	}