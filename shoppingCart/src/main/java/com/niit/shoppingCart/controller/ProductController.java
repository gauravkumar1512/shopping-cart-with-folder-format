package com.niit.shoppingCart.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingCart.dao.ProductDAO;
import com.niit.shoppingCart.model.Product;

@Controller
public class ProductController 

{
	@Autowired
	ProductDAO productDAO;
	
	
	@RequestMapping("/product")
	public ModelAndView getProduct(Model m)
	{
		m.addAttribute("product",new Product());
		ModelAndView model = new ModelAndView("product");
		
		return model;
		
	}
		
		@RequestMapping(value="product/add", method=RequestMethod.POST)
	    public String addUser(Model model, @Valid @ModelAttribute("product") Product product)
		{
			productDAO.addProduct(product);
			
			return "redirect:/product";
		}
	

}
