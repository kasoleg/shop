package org.spring.shop.controllers;

import javax.validation.Valid;

import org.spring.shop.entities.Category;
import org.spring.shop.models.IAdminCategories;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	
	@RequestMapping(value="/saveCategory")
	public String save(@Valid Category category, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("categories", admin.listCategories());
			return "categories";
		}
		if (category.getId() != null)
			admin.modifyCategory(category);
		else
			admin.addCategory(category);
		model.addAttribute("category", new Category());
		model.addAttribute("categories", admin.listCategories());
		return "categories";
	}
	
	@RequestMapping(value="/deleteCategory")
	public String delete(Long id, Model model) {
		admin.deleteCategory(id);
		model.addAttribute("category", new Category());
		model.addAttribute("categories", admin.listCategories());
		return "categories";
	}
	
	@RequestMapping(value="/editCategory")
	public String edit(Long id, Model model) {
		Category category = admin.getCategory(id);
		model.addAttribute("category", category);
		model.addAttribute("categories", admin.listCategories());
		return "categories";
	}
}
