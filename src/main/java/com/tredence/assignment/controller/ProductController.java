package com.tredence.assignment.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.tredence.assignment.model.ProductFilterDTO;
import com.tredence.assignment.model.ProductMetadata;
import com.tredence.assignment.service.ProductService;

import java.util.List;

@RestController
@RequestMapping("/api/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public ResponseEntity<List<ProductMetadata>> getProductsByShopper(@RequestBody ProductFilterDTO filter) {
        List<ProductMetadata> products = productService.getProductsByShopper(filter);
        return ResponseEntity.status(HttpStatus.OK).body(products);
    }
}
