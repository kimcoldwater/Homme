<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--  
    Document Title
    =============================================
    -->
    
    <!--  헤더입니다 --> 
    <title>Homme</title>
    
    <!-- http://localhost/layoutEx 접속주소 -->
    <!--  
    Favicons
    =============================================
    -->
    <link rel="apple-touch-icon" sizes="57x57" href="/resources/assets/images/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/resources/assets/images/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/resources/assets/images/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/resources/assets/images/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/resources/assets/images/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/resources/assets/images/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/resources/assets/images/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/resources/assets/images/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/resources/assets/images/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="/resources/assets/images/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/resources/assets/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/resources/assets/images/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/resources/assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- Default stylesheets-->
    <link href="/resources/assets/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="/resources/assets/lib/animate.css/animate.css" rel="stylesheet">
    <link href="/resources/assets/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/assets/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="/resources/assets/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="/resources/assets/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/assets/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="/resources/assets/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="/resources/assets/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <link href="/resources/assets/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="/resources/assets/css/colors/default.css" rel="stylesheet">
  </head>
  
  
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse">
            <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span>
            <span class="icon-bar"></span><span class="icon-bar"></span></button>
            <a class="navbar-brand" href="index.html">Homme</a>
          </div>
          
          
          <!--  메인 네브바-->
          
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Home</a>
                <ul class="dropdown-menu">
                  <li><a href="index_op_fullscreen_gradient_overlay.html">Join us / Sign in</a></li>
                  <li><a href="index_agency.html">New Realeases</a></li>
                  <li><a href="index_portfolio.html">Featured</a></li>
                  <li><a href="index_restaurant.html">Trending</a></li>
                  <li><a href="index_finance.html">Kids</a></li>
                  <li><a href="index_landing.html">Sale</a></li>
                  <li><a href="index_photography.html">FAQ</a></li>
                  <li><a href="index_shop.html">Help</a></li>
                </ul>
              </li>
              
              
              
              <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Outer</a>
                <ul class="dropdown-menu">
                  <li class="dropdown"><a  href="#">Jumper</a></li>
                  <li class="dropdown"><a  href="#">Coat</a></li>
                  <li class="dropdown"><a  href="#">Jacket</a></li>
                  <li class="dropdown"><a  href="#">Padding</a></li>
               </ul>
              </li>
              
              <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Top</a>
                <ul class="dropdown-menu">
                  <li class="dropdown"><a  href="#" >Long</a>
                  <li class="dropdown"><a  href="#">Knit</a></li>
                  <li class="dropdown"><a  href="#">1/2 Tee</a></li>
                  <li class="dropdown"><a  href="#">Shirts</a></li>
                  <li class="dropdown"><a  href="#">Blank</a></li>  
                </ul>
              </li>
              
               <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Bottom</a>
                <ul class="dropdown-menu">
                  <li class="dropdown"><a  href="#" >Pants</a>
                  <li class="dropdown"><a  href="#">Denim</a></li>
                  <li class="dropdown"><a  href="#">1/2 Hale</a></li>
                  <li class="dropdown"><a  href="#">Jogger</a></li>
                  <li class="dropdown"><a  href="#">Suit</a></li>  
                </ul>
              </li>
                
               <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Shoes</a>
                <ul class="dropdown-menu">
                  <li class="dropdown"><a  href="#" >Sneakers</a>
                  <li class="dropdown"><a  href="#">Boots</a></li>
                  <li class="dropdown"><a  href="#">Walker</a></li>
                  <li class="dropdown"><a  href="#">Derby</a></li>  
                  <li class="dropdown"><a  href="#">Sandal,Slipper</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
        
        
        
      <!--      <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="index.html">Homme</a>
          </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
            
                <li class="dropdown"><a href="#">Shop</a>
              </li>
                <li class="dropdown"><a href="#">Outer</a>
              </li>
                <li class="dropdown"><a href="#">Top</a>
              </li>
                <li class="dropdown"><a href="#">Bottom</a>
              </li>
                <li class="dropdown"><a href="#">Shoes</a>
              </li>
            </ul>
          </div>
          </div> -->

          
<!--            <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="index.html">이벤트바</a>
          </div>
          
          
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li ><a href="#">공지사항</a></li>
              <li ><a href="#">Q%A</a></li>
              <li ><a href="#">FAQ</a></li>
              <li ><a href="#">이벤트</a></li>
              </ul>
		

   
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
               <li class="dropdown"><a href="#" >로그인</a></li>
               <li class="dropdown"><a href="#" >회원가입</a></li>
               <li class="dropdown"><a href="#" >마이페이지</a></li>
               <li class="dropdown"><a href="#" >장바구니</a></li>
               <li class="dropdown"><a href="#" >찜</a></li>
               <li class="dropdown"><a href="#" >주문배송조회</a></li>
       		 </ul>
        </div>
        </div>
        </div> -->
        
      </nav>
      
<!--  header-->


<section class="home-section home-fade home-full-height" id="home">
	<div class="hero-slider">
		<ul class="slides">
			<li class="bg-dark-30 bg-dark shop-page-header"
				style="background-image: url(/resources/assets/images/shop/slider1.png);">
				<div class="titan-caption">
					<div class="caption-content">
						<div class="font-alt mb-30 titan-title-size-1">This is Homme</div>
						<div class="font-alt mb-30 titan-title-size-4">Winter 2022</div>
						<div class="font-alt mb-40 titan-title-size-1">Your online fashion destination</div>
						<a class="section-scroll btn btn-border-w btn-round" href="#latest">Learn More</a>
					</div>
				</div>
			</li>
			
			
			<li class="bg-dark-30 bg-dark shop-page-header"
				style="background-image: url(/resources/assets/images/shop/slider3.png);">
				<div class="titan-caption">
					<div class="caption-content">
						<div class="font-alt mb-30 titan-title-size-1">This is Homme</div>
						<div class="font-alt mb-40 titan-title-size-4">Exclusive products</div>
						<a class="section-scroll btn btn-border-w btn-round"
							href="#latest">Learn More</a>
					</div>
				</div>
			</li>
		</ul>
	</div>
</section>


              
<!--               중간 네브바입니다
 -->              
 
           <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="index.html">중단바</a>
          </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li ><a href="#">공지사항</a></li>
              <li ><a href="#">Q%A</a></li>
              <li ><a href="#">FAQ</a></li>
              <li ><a href="#">이벤트</a></li>
              </ul>
              
              
                <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse">
            <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button><a class="navbar-brand" href="index.html">중간 </a>
          </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
               <li class="dropdown"><a href="#" >로그인</a></li>
               <li class="dropdown"><a href="#" >회원가입</a></li>
               <li class="dropdown"><a href="#" >마이페이지</a></li>
               <li class="dropdown"><a href="#" >장바구니</a></li>
               <li class="dropdown"><a href="#" >찜</a></li>
               <li class="dropdown"><a href="#" >주문배송조회</a></li>
       		 </ul>
        </div>
        </div>
        </div>
        </div>




<!--  메인페이지 입니다-->

<div class="main">
	<section class="module-small">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<h2 class="module-title font-alt">Latest in clothing</h2>
				</div>
			</div>
			<div class="row multi-columns-row">
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="/resources/assets/images/shop/product-7.jpg"
								alt="Accessories Pack" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						<h4 class="shop-item-title font-alt">
							<a href="#">Accessories Pack</a>
						</h4>
						$9.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="/resources/assets/images/shop/product-8.jpg"
								alt="Men’s Casual Pack" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add To Cart</span></a>
							</div>
						</div>
						
						

						<h4 class="shop-item-title font-alt">
							<a href="#">Casual</a>
						</h4>
						$12.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="/resources/assets/images/shop/product-9.jpg"
								alt="Men’s Garb" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add To Cart</span></a>
							</div>
						</div>
						
						
						
						<h4 class="shop-item-title font-alt">
							<a href="#">Dandy</a>
						</h4>
						$6.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="/resources/assets/images/shop/product-10.jpg"
								alt="Cold Garb" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add To Cart</span></a>
							</div>
						</div>
						
						
						
						<h4 class="shop-item-title font-alt">
							<a href="#">Classic</a>
						</h4>
						$14.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="/resources/assets/images/shop/product-11.jpg"
								alt="Accessories Pack" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						
						
						
						<h4 class="shop-item-title font-alt">
							<a href="#">Shoes</a>
						</h4>
						$9.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="/resources/assets/images/shop/product-12.jpg"
								alt="Men’s Casual Pack" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						
						
						
						<h4 class="shop-item-title font-alt">
							<a href="#">Outer</a>
						</h4>
						$12.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="/resources/assets/images/shop/product-13.jpg"
								alt="Men’s Garb" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						
						
						
						
						<h4 class="shop-item-title font-alt">
							<a href="#">Men’s Garb</a>
						</h4>
						$6.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="/resources/assets/images/shop/product-14.jpg"
								alt="Cold Garb" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						<h4 class="shop-item-title font-alt">
							<a href="#">Cold Garb</a>
						</h4>
						$14.00
					</div>
				</div>
			</div>
			<div class="row mt-30">
				<div class="col-sm-12 align-center">
					<a class="btn btn-b btn-round" href="#">See all products</a>
				</div>
			</div>
		</div>
	</section>
	<section class="module module-video bg-dark-30" data-background="">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<h2 class="module-title font-alt mb-0">Be inspired. Get ahead
						of trends.</h2>
				</div>
			</div>
		</div>
		<div class="video-player"
			data-property="{videoURL:'https://www.youtube.com/watch?v=EMy5krGcoOU', containment:'.module-video', startAt:0, mute:true, autoPlay:true, loop:true, opacity:1, showControls:false, showYTLogo:false, vol:25}"></div>
	</section>
	<section class="module">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<h2 class="module-title font-alt">Exclusive products</h2>
					<div class="module-subtitle font-serif">The languages only
						differ in their grammar, their pronunciation and their most common
						words.</div>
				</div>
			</div>
			<div class="row">
				<div class="owl-carousel text-center" data-items="5"
					data-pagination="false" data-navigation="false">
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img
									src="/resources/assets/images/shop/product-1.jpg"
									alt="Leather belt" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Leather belt</a>
								</h4>
								$12.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img
									src="/resources/assets/images/shop/product-2.jpg"
									alt="Derby shoes" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Derby shoes</a>
								</h4>
								$54.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img
									src="/resources/assets/images/shop/product-3.jpg"
									alt="Leather belt" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Leather belt</a>
								</h4>
								$19.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img
									src="/resources/assets/images/shop/product-4.jpg"
									alt="Leather belt" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Leather belt</a>
								</h4>
								$14.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img
									src="/resources/assets/images/shop/product-5.jpg"
									alt="Chelsea boots" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Chelsea boots</a>
								</h4>
								$44.00
							</div>
						</div>	
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img
									src="/resources/assets/images/shop/product-6.jpg"
									alt="Leather belt" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Leather belt</a>
								</h4>
								$19.00
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<hr class="divider-w">
	<section class="module" id="news">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<h2 class="module-title font-alt">Our News</h2>
				</div>
			</div>
			<div class="row multi-columns-row post-columns wo-border">
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="post mb-40">
						<div class="post-header font-alt">
							<h2 class="post-title">
								<a href="#">Receipt of the new collection</a>
							</h2>
						</div>
						<div class="post-entry">
							<p>A wonderful serenity has taken possession of my entire
								soul, like these sweet mornings of spring which I enjoy with my
								whole heart.</p>
						</div>
						<div class="post-more">
							<a class="more-link" href="#">Read more</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="post mb-40">
						<div class="post-header font-alt">
							<h2 class="post-title">
								<a href="#">Sale of summer season</a>
							</h2>
						</div>
						<div class="post-entry">
							<p>A wonderful serenity has taken possession of my entire
								soul, like these sweet mornings of spring which I enjoy with my
								whole heart.</p>
						</div>
						<div class="post-more">
							<a class="more-link" href="#">Read more</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="post mb-40">
						<div class="post-header font-alt">
							<h2 class="post-title">
								<a href="#">New lookbook</a>
							</h2>
						</div>
						<div class="post-entry">
							<p>A wonderful serenity has taken possession of my entire
								soul, like these sweet mornings of spring which I enjoy with my
								whole heart.</p>
						</div>
						<div class="post-more">
							<a class="more-link" href="#">Read more</a>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="post mb-40">
						<div class="post-header font-alt">
							<h2 class="post-title">
								<a href="#">Receipt of the new collection</a>
							</h2>
						</div>
						<div class="post-entry">
							<p>A wonderful serenity has taken possession of my entire
								soul, like these sweet mornings of spring which I enjoy with my
								whole heart.</p>
						</div>
						<div class="post-more">
							<a class="more-link" href="#">Read more</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="post mb-40">
						<div class="post-header font-alt">
							<h2 class="post-title">
								<a href="#">Sale of summer season</a>
							</h2>
						</div>
						<div class="post-entry">
							<p>A wonderful serenity has taken possession of my entire
								soul, like these sweet mornings of spring which I enjoy with my
								whole heart.</p>
						</div>
						<div class="post-more">
							<a class="more-link" href="#">Read more</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="post mb-40">
						<div class="post-header font-alt">
							<h2 class="post-title">
								<a href="#">New lookbook</a>
							</h2>
						</div>
						<div class="post-entry">
							<p>A wonderful serenity has taken possession of my entire
								soul, like these sweet mornings of spring which I enjoy with my
								whole heart.</p>
						</div>
						<div class="post-more">
							<a class="more-link" href="#">Read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr class="divider-w">
	<section class="module-small">
		<div class="container">
			<div class="row client">
				<div class="owl-carousel text-center" data-items="6"
					data-pagination="false" data-navigation="false">
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-1.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-2.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-3.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-4.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-5.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-1.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-2.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-3.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="client-logo">
								<img src="/resources/assets/images/client-logo-dark-4.png"
									alt="Client Logo" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
 
 
 
        <!-- footer 입니다 -->

        <div class="module-small bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Company Info</h5>
                  <p>News</p>
                  <p>Careers</p>
                  <p>Careers</p>
                  <p>Phone: +1 234 567 89 10</p>,Fax: +1 234 567 89 10
                  <p>Email:<a href="#">somecompany@example.com</a></p>
                </div>
              </div>
              
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Policies</h5>
                  <ul class="icon-list">
                    <li> <a href="#">TERMS AND CONDITIONS</a></li>
                    <li> <a href="#">PRIVACY POLICY</a></li>
                    <li> <a href="#">COOKIES POLICY</a></li>
                    <li> <a href="#">COOKIES SETTINGS</a></li>
                    <li> <a href="#">ㅁㅁㅁ</a></li>
         
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                
                
                  <h5 class="widget-title font-alt">Get Help</h5>
                  <ul class="icon-list">
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">How To Clean</a></li>
                    <li><a href="#">Fit Guide</a></li>
                    <li><a href="#">Promotions</a></li>
                  </ul>
                </div>
              </div>
              
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Popular Posts</h5>
                  <ul class="widget-posts">
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="#"><img src="/resources/assets/images/rp-1.jpg" alt="Post Thumbnail"/></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">Designer Desk Essentials</a></div>
                        <div class="widget-posts-meta">23 january</div>
                      </div>
                    </li>
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="#"><img src="/resources/assets/images/rp-2.jpg" alt="Post Thumbnail"/></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">Realistic Business Card Mockup</a></div>
                        <div class="widget-posts-meta">15 February</div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr class="divider-d">
        <footer class="footer bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-6">
                <p class="copyright font-alt">&copy; 2022&nbsp;<a href="index.html">Homme</a>, All Rights Reserved</p>
              </div>
              <div class="col-sm-6">
                <div class="footer-social-links"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-dribbble"></i></a><a href="#"><i class="fa fa-skype"></i></a>
                </div>
              </div>
            </div>
          </div>
        </footer>
      </div>
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>
    
    <!--  
    JavaScripts
    =============================================
    -->
    <script src="/resources/assets/lib/jquery/dist/jquery.js"></script>
    <script src="/resources/assets/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="/resources/assets/lib/wow/dist/wow.js"></script>
    <script src="/resources/assets/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
    <script src="/resources/assets/lib/isotope/dist/isotope.pkgd.js"></script>
    <script src="/resources/assets/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="/resources/assets/lib/flexslider/jquery.flexslider.js"></script>
    <script src="/resources/assets/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="/resources/assets/lib/smoothscroll.js"></script>
    <script src="/resources/assets/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
    <script src="/resources/assets/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="/resources/assets/js/plugins.js"></script>
    <script src="/resources/assets/js/main.js"></script>
  </body>
</html>
