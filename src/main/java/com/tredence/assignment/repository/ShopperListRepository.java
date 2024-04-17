package com.tredence.assignment.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tredence.assignment.model.ShopperList;

@Repository
public interface ShopperListRepository extends JpaRepository<ShopperList, Long> {
}
