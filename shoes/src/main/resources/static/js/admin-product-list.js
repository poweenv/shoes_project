/**
 *
 */
const searchForm = document.querySelector("#searchForm");

searchForm.addEventListener("submit", (e) => {
  e.preventDefault();
  searchForm.submit();
});

document.querySelector(".btn-success").addEventListener("click", () => {
  location.href = "/admin/product/register";
});

document.querySelector("#dcproduct").addEventListener("click",()=>{
  location.href= "/admin/product/dcList"
})

const operForm = document.querySelector("#operForm");

const table = document.querySelector(".product-list-table");
table.addEventListener("click", (e) => {
  e.preventDefault();
  if (e.target.tagName === "A") {
    operForm.action = e.target.getAttribute("href");
    operForm.submit();
  }
});
