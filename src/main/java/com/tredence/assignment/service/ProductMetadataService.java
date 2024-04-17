package com.tredence.assignment.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tredence.assignment.model.ProductMetadata;
import com.tredence.assignment.repository.ProductMetadataRepository;

@Service
public class ProductMetadataService {

	@Autowired
	private ProductMetadataRepository productMetadataRepository;

	@Transactional
	public int saveProductMetaData(List<ProductMetadata> listProduct) {
		int returnCode = -1;
		List<ProductMetadata> savedData = productMetadataRepository.saveAll(listProduct);
		if (savedData.size() != 0) {
			returnCode = 1;
		} else {
			returnCode = 0;
		}
		return returnCode;
	}
}
