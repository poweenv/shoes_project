/**
 *
 */

// replaceState
let criteria = {
  page: 1,
  listAmount: 15,
  searchType: "",
  keyword: "",
  innerKeyword: "",
  order: "registered-date-desc",
  category: "",
  gender: "",
};

function updateUrl(cri) {
  const queryString = new URLSearchParams();
  for (const key in cri) {
    if (cri[key] !== "") {
      queryString.append(key, cri[key]);
    }
  }
  // 필터 변경은 히스토리 남기지 않음 -> 앞으로가기, 뒤로가기시 필터 조작 감지 방지
  window.history.replaceState({}, document.title, `?${queryString.toString()}`);
}

function updateFilters(e, key, value, targetPage) {
  e.preventDefault();
  criteria.page = targetPage ? targetPage : 1;
  criteria[key] = value;
  updateUrl(criteria);
  getList(criteria);
}

window.onpopstate = function (event) {
  if (event.state) {
    criteria = event.state;
    getList(criteria);
  }
};

function loadFiltersFromUrl() {
  const urlParams = new URLSearchParams(window.location.search);
  for (const [key, value] of urlParams.entries()) {
    if (criteria.hasOwnProperty(key)) {
      criteria[key] = value;
    }
  }
}
loadFiltersFromUrl();
// replaceState

// 페이지 이동
document.querySelector("#shopPagination").addEventListener("click", (e) => {
  if (e.target.tagName === "A") {
    updateFilters(e, "page", e.target.getAttribute("href"));
  }
});

// n개씩 보기
const listAmount = document.querySelector("#listAmount");
listAmount.addEventListener("change", (e) => {
  updateFilters(e, "listAmount", listAmount.value, 1);
  // if (listAmount.value == 15) {
  //   updateFilters(e, "listAmount", listAmount.value, criteria.page * 2 - 1);
  // } else if (listAmount.value == 30) {
  //   updateFilters(e, "listAmount", listAmount.value, Math.floor((criteria.page - 1) / 2) + 1);
  // }
});

// 정렬 순서
const order = document.querySelector("#order");
order.addEventListener("change", (e) => {
  updateFilters(e, "order", order.value);
});

// 남성화, 여성화
document.querySelector("#gender").addEventListener("click", (e) => {
  if (e.target.tagName === "INPUT") {
    updateFilters(e, "gender", e.target.value);
  }
});

// 카테고리
document.querySelector("#category").addEventListener("click", (e) => {
  if (e.target.tagName === "A") {
    updateFilters(e, "category", e.target.getAttribute("href"));
  }
});

//결과 내 재검색
document.querySelector("#innerSearchForm").addEventListener("submit", (e) => {
  updateFilters(e, "innerKeyword", document.querySelector("#innerSearchKeyword").value);
});

//상품 카드 클릭 시 상세정보 페이지로 이동
const productList = document.querySelector(".productList");
productList.addEventListener("click", (e) => {
  let target = e.target;

  while (target !== productList) {
    if (target.matches(".productCard")) {
      const productId = target.getAttribute("data-productId");
      location.href = "/shoes/detail?productId=" + productId;
    }
    target = target.parentElement;
  }
});

// 상품 목록 가져오기
function getList(cri) {
  fetch("/shop/list", {
    method: "POST",
    headers: {
      "X-CSRF-TOKEN": csrfToken,
      "Content-Type": "application/json",
    },
    body: JSON.stringify(cri),
  })
    .then((response) => {
      if (!response.ok) {
        throw new Error("리스트 불러오기 실패");
      }
      return response.json();
    })
    .then((data) => {
      const productList = document.querySelector(".productList");
      let products = "";
      if (data.productDTOs.length > 0) {
        data.productDTOs.forEach((item) => {
          let rating = Math.floor(item.rating * 10.0) / 10.0;
          let coloredStars = Math.floor(rating);
          let stars = "";

          //discountPrice는 할인율이라고 생각한다
          var discountAmount = item.price * (item.discountPrice/100);
          var finalPrice = item.price - discountAmount;

          for (let i = 0; i < coloredStars; i++) {
            stars += '<i class="text-warning fa fa-star"></i>';
          }
          for (let i = 0; i < 5 - coloredStars; i++) {
            stars += '<i class="text-muted fa fa-star"></i>';
          }
          products += '<div class="col-md-4 mb-4">';
          products += '<div class="card product-wap productCard rounded-0" data-productId ="' + item.productId + '">';
          products += '<div class="card rounded-0 image-wrapper">';
          products +=
            '<img class="card-img card-img-list rounded-0 img-fluid" src="/attachment/file?fileName=' +
            item.filePath +
            '" style="width: 200px; height: 200px; object-fit: cover;">';
          products +=
            '<div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">';
          products += "</div>";
          products += "</div>";
          products += '<div class="card-body card-body-list">';
          products += '<a href="shop-single.html" class="h3 text-decoration-none">' + item.productName + "</a>";
          products += '<ul class="w-100 list-unstyled d-flex justify-content-between mb-0">';
          products += '<li class="text-secondary"><small>' + item.colors + "</small></li>";
          products +=
            '<li class="pt-2"><span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span> <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span> <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span> <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span> <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span></li>';
          products += "</ul>";
          products += '<ul class="list-unstyled d-flex justify-content-center mb-1">';
          products +=
            "<li>" +
            stars +
            "<span><b> " +
            rating +
            "</b></span><span class='fw-lighter'>" +
            " (" +
            item.reviewCount +
            ")" +
            "</span></li>";
          products += "</ul>";
          if (finalPrice <= item.price * 0.7) {
            // 30% 이상 할인된 경우에 대한 처리
            // 예를 들어, 할인된 상품을 강조하는 CSS 스타일을 적용하거나
            // 할인 정보를 추가적으로 표시하는 등의 작업을 수행
            // 여기서는 단순히 일반 가격에 취소선을 그으며 할인 가격은 빨간색 굵은 글씨로 표시하였습니다.
            products += '<p class="text-center mb-0" style="text-decoration: line-through;">' + item.price + "원</p>";
            products += '<p class="text-center mb-0" style="color: red; font-weight: bold;">' + finalPrice + "원</p>";
          } else if (item.discountPrice == 0) {
            // 할인되지 않은 경우
            products += '<p class="text-center mb-0">' + item.price + "원</p>";
          } else {
            // 30% 미만 할인된 경우
            products += '<p class="text-center mb-0" style="text-decoration: line-through;">' + item.price + "원</p>";
            products += '<p class="text-center mb-0">' + finalPrice + "원</p>";
          }
          products += "</div>";
          products += "</div>";
          products += "</div> ";
        });
      } else {
        //상품 없을 경우
        products += '<div class="container py-5">';
        products += '<div class="row d-flex justify-content-center align-items-center vh-50 empty-list">';
        products += '<div class="col text-center">';
        products += "<h1>해당 조건에 맞는 상품이 없습니다</h1>";
        products += "<h4>빠른 시일 내에 준비하도록 하겠습니다</h4>";
        products += "</div>";
        products += "</div>";
        products += "</div>";
      }
      productList.innerHTML = products;
      setFilter(criteria);
      showProductPage(data.totalCount);
    })
    .catch((error) => console.log(error));
}
getList(criteria);

// 상품목록 페이지네이션
function showProductPage(total) {
  let realend = Math.ceil((total * 1.0) / criteria.listAmount);
  let endPage = Math.ceil(criteria.page / 5.0) * 5;
  let startPage = endPage - 4;
  let prev = startPage != 1;
  let next = false;

  if (endPage > realend) {
    endPage = realend;
  }
  if (endPage < realend) {
    next = true;
  }

  let str = "";
  if (prev) {
    str +=
      '<li class="page-item"><a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="' +
      (startPage - 1) +
      '">prev</a></li>';
  }
  for (let i = startPage; i <= endPage; i++) {
    let disabled = criteria.page == i ? "disabled" : "";
    let active = criteria.page == i ? "active" : "";
    let textDark = criteria.page == i ? "text-dark" : "";
    str +=
      '<li class="page-item ' +
      disabled +
      '"><a class="page-link ' +
      active +
      " rounded-0 shadow-sm border-top-0 border-left-0 " +
      textDark +
      '" href=' +
      i +
      ">" +
      i +
      "</a></li>";
  }

  if (next) {
    str +=
      '<li class="page-item"><a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href=' +
      (endPage + 1) +
      ">next</a></li>";
  }
  document.querySelector("#shopPagination").innerHTML = str;
}

// criteria에 따른 필터값 세팅
function setFilter(cri) {
  document.querySelector("#listAmount").value = cri.listAmount;
  document.querySelector("#order").value = cri.order;

  const radioGender = document.querySelectorAll(".radio-gender");
  radioGender.forEach((radio) => {
    if (radio.value == cri.gender) {
      radio.checked = true;
    }
  });
  document.querySelector("#searchKeyword").value = cri.keyword;
  document.querySelector("#innerSearchKeyword").value = cri.innerKeyword;
}
