package com.tredence.assignment.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tredence.assignment.model.ProductFilterDTO;
import com.tredence.assignment.model.ProductMetadata;
import com.tredence.assignment.repository.ProductListRepository;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductListRepository productRepository;

    public List<ProductMetadata> getProductsByShopper(ProductFilterDTO filter) {
        // Use the filter parameters to construct the query
        return productRepository.findShopperProductList(filter.getShopperId(), filter.getCategory(), filter.getBrand(), filter.getLimit());
    }
}
