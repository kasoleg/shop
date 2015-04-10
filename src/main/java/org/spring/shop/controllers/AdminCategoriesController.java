package org.spring.shop.controllers;

import org.spring.shop.entities.Category;
import org.spring.shop.models.IAdminCategories;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/admin/categories")
public class AdminCategoriesController {
	@Autowired
	private IAdminCategories admin;
	@RequestMapping(value="/index")
	public String index(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categories", admin.listCategories());
		return "categories";
	}
}
