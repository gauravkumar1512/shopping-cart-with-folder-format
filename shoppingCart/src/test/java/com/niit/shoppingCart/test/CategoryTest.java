package com.niit.shoppingCart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.model.Category;

public class CategoryTest {

	public static void main(String[] args) 
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit");
		context.refresh();
		
		Category category = (Category)context.getBean("category");
		CategoryDAO categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
		
		category.setId("202");
		category.setName("TV");
		category.setDes("SONY");
		
		categoryDAO.addCategory(category);
		
		
		
		
	}
}
