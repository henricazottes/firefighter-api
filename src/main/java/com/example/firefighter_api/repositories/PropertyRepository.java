package com.example.firefighter_api.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.firefighter_api.entities.Property;

public interface PropertyRepository extends JpaRepository<Property, Integer> {
    Property findByName(String name);
}