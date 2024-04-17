package com.tredence.assignment.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.tredence.assignment.model.ProductMetadata;

import java.util.List;

@Repository
public interface ProductListRepository extends JpaRepository<ProductMetadata, Long> {

    @Query("SELECT p FROM ProductMetadata p JOIN p.ProductInShelf s WHERE " +
           "(:shopperId IS NULL OR p.shopperId = :shopperId) " +
           "AND (:category IS NULL OR p.category = :category) " +
           "AND (:brand IS NULL OR p.brand = :brand) " +
           "AND (:limit IS  limit = :limt)")
    List<ProductMetadata> findShopperProductList(@Param("shopperId") String shopperId,
                                         @Param("category") String category,
                                         @Param("brand") String brand,
                                         @Param("limit") Integer limit);
}
