package com.tredence.assignment.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tredence.assignment.model.ShopperList;
import com.tredence.assignment.repository.ShopperListRepository;

@Service
public class ShopperService {

	@Autowired
	private ShopperListRepository shopperListRepository;

	@Transactional
	public int saveShopperData(List<ShopperList> shopperList) {
		int returnCode = -1;
		List<ShopperList> savedData = shopperListRepository.saveAll(shopperList);
		System.out.println("Saved data size " + savedData.size());
		if (savedData.size() != 0) {
			returnCode = 1;
		} else {
			returnCode = 0;
		}
		return returnCode;
	}
}
