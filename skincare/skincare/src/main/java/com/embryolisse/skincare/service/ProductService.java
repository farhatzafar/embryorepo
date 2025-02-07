package com.embryolisse.skincare.service;

import com.embryolisse.skincare.model.Product;
import com.embryolisse.skincare.repository.ProductRepository;
import com.embryolisse.skincare.repository.SkinTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private SkinTypeRepository skinTypeRepository;

    // Method to get products based on skin type name (e.g., "Oily", "Dry")
    public List<Product> getProductsBySkinType(String skinTypeName) {
        // Find the skin type by name
        var skinType = skinTypeRepository.findByName(skinTypeName);

        if (skinType == null) {
            throw new RuntimeException("Skin type not found");
        }

        // Return the products that are linked to this skin type
        return productRepository.findProductsBySkinTypeId(skinType.getId());

    }

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }
}
