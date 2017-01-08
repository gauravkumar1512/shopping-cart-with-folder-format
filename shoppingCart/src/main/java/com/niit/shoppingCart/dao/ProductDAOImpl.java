package com.niit.shoppingCart.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingCart.model.Product;

@Repository("ProductDAO")
@EnableTransactionManagement

public class ProductDAOImpl implements ProductDAO

{
@Autowired
private SessionFactory sessionFactory;
public ProductDAOImpl(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

@Transactional

public void addProduct(Product product)
{
	sessionFactory.getCurrentSession().save(product);
}
}
