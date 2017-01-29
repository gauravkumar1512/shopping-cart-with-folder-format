package com.niit.shoppingCart.dao;

import com.niit.shoppingCart.model.Product;


import java.util.List;
public interface ProductDAO 

   {
	 public void addProduct(Product product);
	 public Product getProduct(String id);
	 public void delete(String id);
	 public List<Product> list();
	 public Product getByName(String name);
   }
