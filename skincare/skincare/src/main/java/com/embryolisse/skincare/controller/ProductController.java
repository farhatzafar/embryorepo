package com.embryolisse.skincare.controller;

import com.embryolisse.skincare.model.Product;
import com.embryolisse.skincare.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:5173")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/api/products")
    public List<Product> getProducts() {
        return productService.getAllProducts();
    }

    // Endpoint to fetch products based on skin type
    @GetMapping("/api/products/skin-type")
    public List<Product> getProductsBySkinType(@RequestParam String skinType) {
        return productService.getProductsBySkinType(skinType);

    }
}
