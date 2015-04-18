package org.spring.shop.controllers;

import javax.validation.Valid;

import org.spring.shop.entities.Product;
import org.spring.shop.models.IAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/admin/products")
public class AdminProductsController {
	@Autowired
	private IAdmin admin;
	@RequestMapping(value="/index")
	public String index(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("products", admin.listProducts());
		model.addAttribute("categories", admin.listCategories());
		model.addAttribute("brands", admin.listBrands());
		return "ProductsView";
	}
	
	@RequestMapping(value="/saveProduct")
	public String save(@Valid Product product, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("categories", admin.listProducts());
			model.addAttribute("categories", admin.listCategories());
			model.addAttribute("brands", admin.listBrands());
			return "ProductsView";
		}
		if (product.getId() != null)
			admin.modifyProduct(product);
		else
			admin.addProduct(product);
		model.addAttribute("product", new Product());
		model.addAttribute("products", admin.listProducts());
		model.addAttribute("categories", admin.listCategories());
		model.addAttribute("brands", admin.listBrands());
		return "ProductsView";
	}
	
	@RequestMapping(value="/deleteProduct")
	public String delete(Long id, Model model) {
		admin.deleteProduct(id);
		model.addAttribute("product", new Product());
		model.addAttribute("products", admin.listProducts());
		model.addAttribute("categories", admin.listCategories());
		model.addAttribute("brands", admin.listBrands());
		return "ProductsView";
	}
	
	@RequestMapping(value="/editProduct")
	public String edit(Long id, Model model) {
		Product product = admin.getProduct(id);
		model.addAttribute("product", product);
		model.addAttribute("products", admin.listProducts());
		model.addAttribute("categories", admin.listCategories());
		model.addAttribute("brands", admin.listBrands());
		return "ProductsView";
	}
}