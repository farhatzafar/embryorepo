package com.embryolisse.skincare.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="skin_types")
public class SkinType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    public Long getId() {
        return id;
    }
}
