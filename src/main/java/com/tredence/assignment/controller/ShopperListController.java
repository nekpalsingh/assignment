package com.tredence.assignment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.tredence.assignment.model.ShopperList;
import com.tredence.assignment.service.ShopperService;

@RestController
@RequestMapping("/api/shopper-lists")
public class ShopperListController {

	@Autowired
	private ShopperService shopperService;

	@PostMapping
	public ResponseEntity<String> storeShopperList(@RequestBody List<ShopperList> shopperList) {

		System.out.println("Inside storeShopperList method");

		try {
			int status = shopperService.saveShopperData(shopperList);
			if (status != 0) {
				return ResponseEntity.status(HttpStatus.CREATED).body("Shopper List stored successfully");
			} else {
				return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
						.body("Something went wrong while storing ShopperList: ");
			}
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body("Error storing ShopperList: " + e.getMessage());
		}

	}
}
