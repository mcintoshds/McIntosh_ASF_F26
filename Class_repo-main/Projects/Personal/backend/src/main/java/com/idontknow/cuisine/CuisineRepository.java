package com.idontknow.cuisine;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CuisineRepository extends JpaRepository<Cuisine, Long> {
    List<Cuisine> findAllByOrderByNameAsc();
}
