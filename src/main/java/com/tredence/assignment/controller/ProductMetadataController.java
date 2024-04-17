package com.tredence.assignment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.tredence.assignment.model.ProductMetadata;
import com.tredence.assignment.repository.ProductMetadataRepository;
import com.tredence.assignment.service.ProductMetadataService;

@RestController
@RequestMapping("/api")
public class ProductMetadataController {

	@Autowired
	private ProductMetadataService productMetadataService;

	@PostMapping("/product-metadata")
	public ResponseEntity<String> storeProductMetadata(@RequestBody List<ProductMetadata> productMetadata) {
		System.out.println("Inside storeProductMetadata method");
				
		try {
			int status=productMetadataService.saveProductMetaData(productMetadata);
			if(status != 0) {
	           return ResponseEntity.status(HttpStatus.CREATED).body("Product metadata stored successfully");
			}else {
	            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Something went wrong while storing product metadata: ");
			}
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error storing product metadata: " + e.getMessage());
        }
	}

}
