package com.example.firefighter_api.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.firefighter_api.entities.Firefighter;

public interface FirefighterRepository extends JpaRepository<Firefighter, Integer> {

}