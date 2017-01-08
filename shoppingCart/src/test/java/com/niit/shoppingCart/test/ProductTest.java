package com.niit.shoppingCart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.ProductDAO;
import com.niit.shoppingCart.model.Product;

public class ProductTest 
{

	public static void main(String[] args) 
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit");
		context.refresh();
		
		Product product = (Product)context.getBean("product");
		ProductDAO productDAO = (ProductDAO)context.getBean("ProductDAO");
		
		product.setId("202");
		product.setName("TV");
		product.setDesc("SONY");
		product.setPrice(1000);;
		
		productDAO.addProduct(product);
		
		
		
		
	}
}
