package com.niit.shoppingCart.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingCart.dao.SupplierDAO;

import com.niit.shoppingCart.model.Supplier;

@Controller
public class SupplierController 

  {
   @Autowired
   SupplierDAO supplierDAO;
   
   @RequestMapping("/supplier")
   public ModelAndView getSupplier(Model m)
	{
		m.addAttribute("supplier",new Supplier());
		ModelAndView model = new ModelAndView("supplier");
		
		return model;
		
	}
		
		@RequestMapping(value="supplier/add", method=RequestMethod.POST)
		public String addUser(Model model, @Valid @ModelAttribute("supplier") Supplier supplier)
		{
			supplierDAO.addSupplier(supplier);
			
			return "redirect:/supplier";
		}
  }
