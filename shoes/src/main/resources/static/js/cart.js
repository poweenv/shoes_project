/**
 *
 */

document.querySelector(".cart__bigorderbtn.left").addEventListener("click", () => {
  location.href = "/shop/list";
});

document.querySelector("#orderBtn").addEventListener("click", () => {
  location.href = "/purchase/confirm";
});

if (document.querySelector("#soldOut")) {
  alert("'" + document.querySelector("#soldOut").value + "'" + "상품의 재고가 부족하여 주문이 취소됩니다.");
}

if (document.querySelector("#cartdump")) {
  document.querySelector("#cartdump").addEventListener("click", (e) => {
    e.preventDefault();
    if (confirm("정말 장바구니를 비우시겠습니까?")) {
      location.href = "/cart/dump";
    }
  });
}
