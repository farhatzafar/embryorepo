package com.embryolisse.skincare.repository;

import com.embryolisse.skincare.model.Product;
import com.embryolisse.skincare.model.SkinType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SkinTypeRepository extends JpaRepository<SkinType, Long> {

    // Find SkinType by name (e.g., "Oily", "Dry")
    SkinType findByName(String name);
}
