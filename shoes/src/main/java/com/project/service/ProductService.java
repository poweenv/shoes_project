package com.project.service;

import java.util.List;

import com.project.domain.CartDTO;
import com.project.domain.Criteria;
import com.project.domain.ListPageDTO;
import com.project.domain.ProductDTO;

public interface ProductService {
	public ListPageDTO getProductsList(Criteria cri);
	public int getSaleCount(Criteria cri);
	public List<ProductDTO> getAllProducts(Criteria cri);
	public boolean registerProduct(ProductDTO productDTO, List<String> colorList);
	public int getCurrentProductId();
	public ProductDTO getSingleProduct(String productId);
	public boolean modifyProduct(ProductDTO productDTO);
	public boolean increaseSoldCount(CartDTO cartDTO);
	
	public List<ProductDTO> adminDcList(Criteria cri);
	public ListPageDTO getDcList(Criteria cri);
	public int getDcCount(Criteria cri);
}
