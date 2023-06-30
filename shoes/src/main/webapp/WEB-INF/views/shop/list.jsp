<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp"%>

<title>Zay Shop - Listing Page</title>

<!-- Start Content -->
<div class="container py-5">
	<div class="row">

		<div class="col-lg-3">
			<h1 class="h2 pb-4">Categories</h1>
			<ul class="list-unstyled templatemo-accordion">
				<li class="pb-3 d-flex justify-content-between h3" id="gender">Gender <i class="fa fa-fw fa-chevron-circle-right mt-1"></i>
					<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
						<input type="radio" class="btn-check radio-gender" name="btnradio" value="" id="option1" autocomplete="off"> 
						<label class="btn btn-outline-dark" for="option1">전체</label>
						<input type="radio" class="btn-check radio-gender" name="btnradio" value="for-men" id="option2" autocomplete="off">
						<label class="btn btn-outline-dark" for="option2">남성</label>
						<input type="radio" class="btn-check radio-gender" name="btnradio" value="for-women" id="option4" autocomplete="off">
						<label class="btn btn-outline-dark" for="option4">여성</label>
					</div>
				</li>
				<li class="pb-3" id="category"><a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#"> Category <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
				</a>
					<ul id="collapseThree" class="collapse list-unstyled pl-3">
						<li><a class="text-decoration-none" href="">전체</a></li>
						<li><a class="text-decoration-none" href="running">운동화</a></li>
						<li><a class="text-decoration-none" href="shoes">구두</a></li>
						<li><a class="text-decoration-none" href="slipper">슬리퍼</a></li>  
					</ul></li>
			</ul>
		</div>  

		<div class="col-lg-9">
			<div class="d-flex justify-content-between">
				<div class="col-md-4 pb-4">
					<div class="d-flex align-items-center">
						<select class="form-control" id="order" name="order">
							<option value="registered-date-desc" >최근 등록 순</option>
							<option value="sold-count-desc" >많이 팔린 순</option>
							<option value="price-desc" >높은 가격 순</option>
							<option value="price-asc" >낮은 가격 순</option>
							<option value="rating-desc" >평점 높은 순</option>
						</select>
					</div>
				</div>
				<div class="col-md-2 pb-4 ">
					<div class="d-flex ">
						<select class="form-control text-center" id="listAmount" name="listAmount">
							<option value="15" >15개씩 보기</option>
							<option value="30" >30개씩 보기</option>
						</select>
					</div>
				</div>
			</div>

			<div class="row productList">    
			</div>

			<!-- pagination -->
			<div div="row">
				<ul class="pagination pagination-lg justify-content-end" id="shopPagination">
				</ul>             
			</div>
		</div>
    
	</div>
</div>       
<!-- End Content -->

<!-- Modal -->
<div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="w-100 pt-1 mb-5 text-right">
			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		</div>
		<form action="" method="get" class="modal-content modal-body border-0 p-0">
			<div class="input-group mb-2">
				<input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
				<button type="submit" class="input-group-text bg-success text-light">
					<i class="fa fa-fw fa-search text-white"></i>   
				</button>  
			</div>   
		</form>
	</div>
</div>

<!-- Start Brands -->
<section class="bg-light py-5">
	<div class="container my-4">
		<div class="row text-center py-3">
			<div class="col-lg-6 m-auto">
				<h1 class="h1">Our Brands</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod Lorem ipsum dolor sit amet.</p>
			</div>
			<div class="col-lg-9 m-auto tempaltemo-carousel">
				<div class="row d-flex flex-row">
					<!--Controls-->
					<div class="col-1 align-self-center">
						<a class="h1" href="#multi-item-example" role="button" data-bs-slide="prev"> <i class="text-light fas fa-chevron-left"></i>
						</a>
					</div>
					<!--End Controls-->
    
					<!--Carousel Wrapper-->
					<div class="col">
						<div class="carousel slide carousel-multi-item pt-2 pt-md-0" id="multi-item-example" data-bs-ride="carousel">
							<!--Slides-->
							<div class="carousel-inner product-links-wap" role="listbox">

								<!--First slide-->
								<div class="carousel-item active">
									<div class="row">
										<div class="col-3 p-md-5">
											<a href="#"><img class="img-fluid brand-img" src="/assets/img/brand_01.png" alt="Brand Logo"></a>
										</div>
										<div class="col-3 p-md-5">
											<a href="#"><img class="img-fluid brand-img" src="/assets/img/brand_02.png" alt="Brand Logo"></a>
										</div>
										<div class="col-3 p-md-5">
											<a href="#"><img class="img-fluid brand-img" src="/assets/img/brand_03.png" alt="Brand Logo"></a>
										</div>
										<div class="col-3 p-md-5">
											<a href="#"><img class="img-fluid brand-img" src="/assets/img/brand_04.png" alt="Brand Logo"></a>
										</div>
									</div>
								</div>
								<!--End First slide-->

								<!--Second slide-->
								<div class="carousel-item">
									<div class="row">
										<div class="col-3 p-md-5">
											<a href="#"><img class="img-fluid brand-img" src="/assets/img/brand_01.png" alt="Brand Logo"></a>
										</div>
										<div class="col-3 p-md-5">
											<a href="#"><img class="img-fluid brand-img" src="/assets/img/brand_02.png" alt="Brand Logo"></a>
										</div>
										<div class="col-3 p-md-5">
											<a href="#"><img class="img-fluid brand-img" src="/assets/img/brand_03.png" alt="Brand Logo"></a>
										</div>
										<div class="col-3 p-md-5">
											<a href="#"><img class="img-fluid brand-img" src="/assets/img/brand_04.png" alt="Brand Logo"></a>
										</div>
									</div>
								</div>
								<!--End Second slide-->
							</div>
							<!--End Slides-->
						</div>
					</div>
					<!--End Carousel Wrapper-->

					<!--Controls-->
					<div class="col-1 align-self-center">
						<a class="h1" href="#multi-item-example" role="button" data-bs-slide="next"> <i class="text-light fas fa-chevron-right"></i>
						</a>
					</div>
					<!--End Controls-->
				</div> 
			</div> 
		</div>          
	</div> 
</section>
<!--End Brands-->      
           
<script>
	const csrfToken = '${_csrf.token}';
</script>
<script src="/assets/js/jquery-1.11.0.min.js"></script>
<script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/assets/js/bootstrap.bundle.min.js"></script>
<script src="/assets/js/templatemo.js"></script>
<script src="/assets/js/custom.js"></script>
<script src="/js/list.js"></script>
<!-- End Script -->
<%@ include file="../include/footer.jsp"%>
