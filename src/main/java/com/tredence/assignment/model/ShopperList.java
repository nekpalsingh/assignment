package com.tredence.assignment.model;
import lombok.Data;
import javax.persistence.*;
import java.util.List;

@Data
@Entity
@Table(name = "shopper_list")
public class ShopperList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String shopperId;

    @ElementCollection
    private List<ProductInShelf> shelf;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getShopperId() {
		return shopperId;
	}

	public void setShopperId(String shopperId) {
		this.shopperId = shopperId;
	}

	public List<ProductInShelf> getShelf() {
		return shelf;
	}

	public void setShelf(List<ProductInShelf> shelf) {
		this.shelf = shelf;
	}
    
    
}
