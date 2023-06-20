package com.project.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.domain.detail.CartDTO;
import com.project.domain.detail.ProductDTO;

@Mapper
public interface DetailMapper {

	// 제품 조회 폼에서 회원이(memberId) 선택한 제품(productId) 정보 보여주기
		public ProductDTO detail(@Param("productId") int productId);
		
	// 장바구니에 담기 누를 시 장바구니에 제품 정보 보내기
		public int cartInsert(CartDTO cartDto);
}
