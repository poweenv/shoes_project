<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<div class="cart__information bg-ligth">
	<ul>
		<li>장바구니 상품은 최대 30일간 저장됩니다.</li>
		<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
		<li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
	</ul>
</div>
<div class="container py-5">
	<table class="table">
		<thead>
			<tr>
			<th>
				<input type="checkbox" class="cartItem" id="cartItem">
			</th>
				<th class="td_width_3">이미지</th>
					<th class="td_width_4">상품정보</th>
					<th class="td_width_5">단가</th>
					<th class="td_width_6">수량</th>
					<th class="td_width_7">합계 금액</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>
		</tbody>
	</table>
</div>
<%@include file="../include/footer.jsp"%>
