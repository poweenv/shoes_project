package com.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.domain.Criteria;
import com.project.domain.InventoryDTO;
import com.project.domain.ProductDTO;

@Mapper
public interface ProductMapper {
	public List<ProductDTO> getOnSaleList(Criteria cri);
	public int getOnSaleCount();
	public List<ProductDTO> getTotalList(Criteria cri);
	public int insertProduct(ProductDTO productDTO);
	public int insertInventory(InventoryDTO inventoryDTO);
	public int getCurrentProductSequence();
}
