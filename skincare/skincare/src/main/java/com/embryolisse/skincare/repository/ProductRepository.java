package com.embryolisse.skincare.repository;

import com.embryolisse.skincare.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    // Custom query to find products by skin type ID
    @Query("SELECT p FROM Product p JOIN p.skinTypes st WHERE st.id = ?1")
    List<Product> findProductsBySkinTypeId(Long skinTypeId);
}
