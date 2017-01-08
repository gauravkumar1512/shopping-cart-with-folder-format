package com.niit.shoppingCart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingCart.dao.CategoryDAO;
import com.niit.shoppingCart.dao.SupplierDAO;
import com.niit.shoppingCart.model.Category;
import com.niit.shoppingCart.model.Supplier;

public class SupplierTest {

	public static void main(String[] args) {
AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit");
		context.refresh();
		
		
		Supplier supplier = (Supplier)context.getBean("supplier");
		SupplierDAO supplierDAO = (SupplierDAO)context.getBean("supplierDAO");
		
		supplier.setId("201");
		supplier.setName("lcd");
		supplier.setDesc("good view");
		
		supplierDAO.addSupplier(supplier);

	}

}
