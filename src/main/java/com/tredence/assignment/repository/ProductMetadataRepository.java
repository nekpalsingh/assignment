package com.tredence.assignment.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tredence.assignment.model.ProductMetadata;

@Repository
public interface ProductMetadataRepository extends JpaRepository<ProductMetadata, Long> {
}
