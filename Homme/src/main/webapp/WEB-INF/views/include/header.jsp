<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Homme</title>

<!-- http://localhost/layoutEx 접속주소 -->


<link rel="apple-touch-icon" sizes="57x57"
	href="/resources/assets/images/favicons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/resources/assets/images/favicons/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/resources/assets/images/favicons/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/resources/assets/images/favicons/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/resources/assets/images/favicons/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/resources/assets/images/favicons/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/resources/assets/images/favicons/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/resources/assets/images/favicons/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/resources/assets/images/favicons/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/resources/assets/images/favicons/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/resources/assets/images/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/resources/assets/images/favicons/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/resources/assets/images/favicons/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="assets/images/favicons/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!-- Default stylesheets-->
<link href="/resources/assets/lib/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Volkhov:400i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">
<link href="/resources/assets/lib/animate.css/animate.css"
	rel="stylesheet">
<link
	href="/resources/assets/lib/components-font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/resources/assets/lib/et-line-font/et-line-font.css"
	rel="stylesheet">
<link href="/resources/assets/lib/flexslider/flexslider.css"
	rel="stylesheet">
<link
	href="/resources/assets/lib/owl.carousel/dist/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="/resources/assets/lib/owl.carousel/dist/assets/owl.theme.default.min.css"
	rel="stylesheet">
<link
	href="/resources/assets/lib/magnific-popup/dist/magnific-popup.css"
	rel="stylesheet">
<link
	href="/resources/assets/lib/simple-text-rotator/simpletextrotator.css"
	rel="stylesheet">
<link href="/resources/assets/css/style.css" rel="stylesheet">
<link id="color-scheme" href="/resources/assets/css/colors/default.css"
	rel="stylesheet">
</head>

<body data-spy="scroll" data-target=".onpage-navigation"
	data-offset="60">
	<main>
		<div class="page-loader">
			<div class="loader">Loading...</div>
		</div>


		<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target="#custom-collapse">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span> <span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">Homme</a>
				</div>

				<!--  메인 네브바-->

				<div class="collapse navbar-collapse" id="custom-collapse">
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${member == null}">
								<li><a href="/member/LoginForm">login</a></li>
							</c:if> <c:if test="${member != null}">
								<li><a href="/member/logout">logout</a></li>
								<li><a href="/member/mypageForm">mypage</a></li>
							</c:if>

						<li class="dropdown"><a class="dropdown-toggle" href="#"
							data-toggle="dropdown">Home</a>
							<ul class="dropdown-menu">
								<li><a href="index_op_fullscreen_gradient_overlay.html">Join
										us / Sign in</a></li>
								<li><a href="index_agency.html">New Releases</a></li>
								<li><a href="index_portfolio.html">Featured</a></li>
								<li><a href="index_restaurant.html">Trending</a></li>
								<li><a href="index_finance.html">Kids</a></li>
								<li><a href="index_landing.html">Sale</a></li>
								<li><a href="index_photography.html">FAQ</a></li>
								<li><a href="index_shop.html">Help</a></li>
							</ul></li>


						<li class="dropdown"><a class="dropdown-toggle"
							href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=outer&sort="
							data-toggle="dropdown">Outer</a>
							<ul class="dropdown-menu">
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=jumper&sort=">Jumper</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=coat&sort=">Coat</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=jacket&sort=">Jacket</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=padding&sort=">Padding</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle" href="#"
							data-toggle="dropdown">Top</a>
							<ul class="dropdown-menu">
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=logn&sort=">Long</a>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=knit&sort=">Knit</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=halftee&sort=">1/2
										Tee</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=shirts&sort=">Shirts</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=blank&sort=">Blank</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=button&sort="
							data-toggle="dropdown">Bottom</a>
							<ul class="dropdown-menu">
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=pants&sort=">Pants</a>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=denim&sort=">Denim</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=halfpants&sort=">1/2
										Hale</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=jogger&sort=">Jogger</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=sult&sort=">Suit</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=shoes&sort="
							data-toggle="dropdown">Shoes</a>
							<ul class="dropdown-menu">
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=sneakers&sort=">Sneakers</a>
								<li class="dropdown"><a
									href/main/itemView?page=1&perPageNum=8&catemain=item&catesub=boots&sort="#">Boots</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=walker&sort=">Walker</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=derby&sort=">Derby</a></li>
								<li class="dropdown"><a
									href="/main/itemView?page=1&perPageNum=8&catemain=item&catesub=sandal&sort=">Sandal,Slipper</a></li>
							</ul></li>
					</ul>
				</div>
			</div>



			<!--      상품목록에 들어갈 네브바입니다 

      <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span><span class="icon-bar"></span>
            <span class="icon-bar"></span></button><a class="navbar-brand" href="index.html">Homme</a>
          </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
            
                <li class="dropdown"><a href="#">Shop</a></li>
                <li class="dropdown"><a href="#">Outer</a></li>
                <li class="dropdown"><a href="#">Top</a></li>
                <li class="dropdown"><a href="#">Bottom</a></li>
                <li class="dropdown"><a href="#">Shoes</a></li>
            </ul>
          </div>
          </div> 
          -->


			<!--  	 <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span><span class="icon-bar"></span>
            <span class="icon-bar"></span></button><a class="navbar-brand" href="index.html">이벤트바</a>
          </div>
          
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li ><a href="#">NOTICE</a></li>
              <li ><a href="#">Q%A</a></li>
              <li ><a href="#">FAQ</a></li>
              <li ><a href="#">EVENT</a></li>
              </ul>
		

   
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
               <li class="dropdown"><a href="#" >LOGIN</a></li>
               <li class="dropdown"><a href="#" >REGISTER</a></li>
               <li class="dropdown"><a href="#" >MyPage</a></li>
               <li class="dropdown"><a href="#" >CART</a></li>
               <li class="dropdown"><a href="#" >BOOKMARK</a></li>
               <li class="dropdown"><a href="#" >ORDER</a></li>
       		 </ul>
        </div>
        </div>
        </div>  -->

		</nav>
	</main>