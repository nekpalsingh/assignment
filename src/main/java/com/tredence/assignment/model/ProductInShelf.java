package com.tredence.assignment.model;
import lombok.Data;
import javax.persistence.Embeddable;

@Data
@Embeddable
public class ProductInShelf {
    private String productId;
    private double relevancyScore;
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public double getRelevancyScore() {
		return relevancyScore;
	}
	public void setRelevancyScore(double relevancyScore) {
		this.relevancyScore = relevancyScore;
	}
    
    
}
