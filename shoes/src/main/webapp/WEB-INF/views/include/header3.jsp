<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<style>
	#header-member{
		margin-right: -10%
	}
</style>
<head>
    <title>Zay Shop - About Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico">

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/templatemo.css">
    <link rel="stylesheet" href="/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/css/fontawesome.min.css">

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="/css/slick-theme.css">


<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>

    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="#">blackpearl.project</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="#">010-123-5678</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">
                BLACKPEARL
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                
                <nav class="navbar navbar-expand-lg bg-body-tertiary">

<!-- 남녀 선택 버튼 -->
  <div class="container-fluid">

    <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    신발 종류
  </button>
  
  <ul class="dropdown-menu">

  
    <li><a class="dropdown-item" href="/shoes/list?page=1&category=">ex)운동화</a></li>
    <li><a class="dropdown-item" href="/shoes/list?page=1&category=">ex)구두</a></li>
    <li><a class="dropdown-item" href="/shoes/list?page=1&category=">ex)샌들</a></li>
    <li><a class="dropdown-item" href="/shoes/list?page=1&category=">ex)슬리퍼</a></li>
    <li><a class="dropdown-item" href="/shoes/list?page=1&category=">ex)스포츠</a></li>
    <li><a class="dropdown-item" href="/shoes/list?page=1&category=">ex)신상품</a></li>
  </ul>
</div>




    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
        <li class="nav-item">
          <a class="nav-link" href="/shoes/sale">Sale</a>
        </li>
        
        <!-- Button trigger modal -->
<button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal">
  안내사항
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">도움말</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="card" style="width: 25rem;">
  <div class="card-body">
    <h5 class="card-title">상품 구매시 주의 사항</h5>
    <p class="card-text">저희 상품은 구매시 환불이 불가능 하오니 상품을 구매하실 때 신중히 생각해 주시길 바랍니다.
    					더 자세한 안내가 필요하다면 아래 버튼을 눌러주세요
    </p>
    <a href="${memberDTO.id}" class="btn btn-success">QNA</a>
  </div>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
      
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" id="shoes-search" placeholder="Search" aria-label="Search">
         <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
      </form>
    </div>
    
                   
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
                    </a>
    <div class="navbar align-self-center d-flex">

                </div>

    


  </div>
</nav>
                
              
            </div>

        </div>
    </nav>
    
    <!-- Close Header -->