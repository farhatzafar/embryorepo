package com.embryolisse.skincare.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name="products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;  // This should be mapped as 'bigint' in the database

    private String name;
    private String description;
    private String image_url;

    // ManyToMany relationship to SkinType
    @ManyToMany(cascade = CascadeType.ALL) // Optional: only if you want cascading operations
    @JoinTable(
            name = "product_skin_types", // Join table
            joinColumns = @JoinColumn(name = "product_id"), // FK for product_id
            inverseJoinColumns = @JoinColumn(name = "skin_type_id") // FK for skin_type_id
    )
    private List<SkinType> skinTypes;

}
