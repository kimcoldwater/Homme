<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
var item_no = ${itemContent.item_no} ;




$(document).ready(function(){
	var target = document.getElementById("item_optiont");
	$("#cartInsert").on("click", function(){
		var item_optionValue = target.options[target.selectedIndex].value ;
		var item_optionContent = target.options[target.selectedIndex].text ;
		alert('옵션값'+item_optionContent + item_optionValue);
		 $.ajax({
	           type : "POST",  
	           url : "/main/cart",       
	           dataType : "json",   
	           data : {'cart_option_no' : item_optionValue , 'cart_option_content' : item_optionContent , 'cart_item_no' : item_no },
	           error : function(request, status, error){
	           	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	           },
	           success : function(data) {
					
	        	   if(data == 1){
	        		   alert("장바구니추가");
	        	   }
	 					
	           }
	       });
	})
});

		
		
	

</script>

<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->

<div class="main">
	<section class="module">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 mb-sm-40">
					<a class="gallery" href="/img/${itemContent.item_imgmain}">
					<img src="/img/${itemContent.item_imgmain}" alt="썸네일이미지" /></a>
					<ul class="product-gallery">
						<li><a class="gallery"
							href="/img/${itemContent.item_imgsub}">
							<img src="/img/${itemContent.item_imgsub}" alt="Single Product" /></a></li>
					</ul>
				</div>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-12">
							<h1 class="product-title font-alt">${itemContent.item_name} 
							</h1>
						</div>
					</div>
					<div class="row mb-20">
						<div class="col-sm-12">
							<span><i class="fa fa-star star"></i></span><span><i
								class="fa fa-star star"></i></span><span><i
								class="fa fa-star star"></i></span><span><i
								class="fa fa-star star"></i></span><span><i
								class="fa fa-star star-off"></i></span><a
								class="open-tab section-scroll" href="#reviews">평균점수(리뷰개수넣기)
								-- if test=(평균점수가 1점대) i class = start 1개 이런식으로 구현</a>
						</div>
					</div>
					<div class="row mb-20">
						<div class="col-sm-12">
							<div class="price font-alt">
								<span class="amount">￦ ${itemContent.item_price}</span>
							</div>
						</div>
					</div>
					<div class="row mb-20">
						<div class="col-sm-12">
							<div class="description">

								<p>${itemContent.item_subcontent}</p>
							</div>
							<div class="description">
								<br />
								<p>${itemContent.item_model}</p>
							</div>
						</div>
					</div>
					<div class="row mb-20">
						<div class="col-sm-12 mb-sm-20 mb-2">
							<select class="form-control input-lg" name="item_optiont" id="item_optiont">
								<c:forEach items="${itemOption}" var="itemOption">	
								<c:if test="${itemOption.option_vol > 0}">						
								<option value="${itemOption.option_no}">${itemOption.option_content}
								 <c:if test="${itemOption.option_vol == 1}"> - 마지막 상품</c:if>
								 </option>
								 </c:if>
								 <c:if test="${itemOption.option_vol < 1}">						
								<option value="${itemOption.option_no}" disabled>${itemOption.option_content} - 품절
								 </option>
								 </c:if>
								</c:forEach>
							</select>
						<br/>	
						</div>
						
						<div class="col-sm-4 mb-sm-20 mt-2">
					
						</div>
						<div class="col-sm-8">
							<a class="btn btn-lg btn-block btn-round btn-b" id="cartInsert">
							Add To Cart</a>
						</div>
					</div>
					<div class="row mb-20">
						<div class="col-sm-12">
							<div class="product_meta">
								Categories:<a href="#"> Man, </a><a href="#">Clothing, </a><a
									href="#">T-shirts</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-70">
				<div class="col-sm-12">
					<ul class="nav nav-tabs font-alt" role="tablist">
						<li class="active"><a href="#description" data-toggle="tab"><span
								class="icon-tools-2"></span>Description</a></li>
						<li><a href="#data-sheet" data-toggle="tab"><span
								class="icon-tools-2"></span>Data sheet</a></li>
						<li><a href="#reviews" data-toggle="tab"><span
								class="icon-tools-2"></span>Reviews (2)</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="description">
							<p>Everyone realizes why a new common language would be
								desirable: one could refuse to pay expensive translators. To
								achieve this, it would be necessary to have uniform grammar,
								pronunciation and more common words. If several languages
								coalesce, the grammar of the resulting language is more simple
								and regular than that of the individual languages.</p>
							<p>The European languages are members of the same family.
								Their separate existence is a myth. For science, music, sport,
								etc, Europe uses the same vocabulary. The languages only differ
								in their grammar, their pronunciation and their most common
								words.</p>
						</div>
						<div class="tab-pane" id="data-sheet">
							<table class="table table-striped ds-table table-responsive">
								<tbody>
									<tr>
										<th>Title</th>
										<th>Info</th>
									</tr>
									<tr>
										<td>Compositions</td>
										<td>Jeans</td>
									</tr>
									<tr>
										<td>Size</td>
										<td>44, 46, 48</td>
									</tr>
									<tr>
										<td>Color</td>
										<td>Black</td>
									</tr>
									<tr>
										<td>Brand</td>
										<td>Somebrand</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="tab-pane" id="reviews">
							<div class="comments reviews">
								<div class="comment clearfix">
									<div class="comment-avatar">
										<img src="" alt="avatar" />
									</div>
									<div class="comment-content clearfix">
										<div class="comment-author font-alt">
											<a href="#">John Doe</a>
										</div>
										<div class="comment-body">
											<p>The European languages are members of the same family.
												Their separate existence is a myth. For science, music,
												sport, etc, Europe uses the same vocabulary. The European
												languages are members of the same family. Their separate
												existence is a myth.</p>
										</div>
										<div class="comment-meta font-alt">
											Today, 14:55 -<span><i class="fa fa-star star"></i></span><span><i
												class="fa fa-star star"></i></span><span><i
												class="fa fa-star star"></i></span><span><i
												class="fa fa-star star"></i></span><span><i
												class="fa fa-star star-off"></i></span>
										</div>
									</div>
								</div>
								<div class="comment clearfix">
									<div class="comment-avatar">
										<img src="" alt="avatar" />
									</div>
									<div class="comment-content clearfix">
										<div class="comment-author font-alt">
											<a href="#">Mark Stone</a>
										</div>
										<div class="comment-body">
											<p>Europe uses the same vocabulary. The European
												languages are members of the same family. Their separate
												existence is a myth.</p>
										</div>
										<div class="comment-meta font-alt">
											Today, 14:59 -<span><i class="fa fa-star star"></i></span><span><i
												class="fa fa-star star"></i></span><span><i
												class="fa fa-star star"></i></span><span><i
												class="fa fa-star star-off"></i></span><span><i
												class="fa fa-star star-off"></i></span>
										</div>
									</div>
								</div>
							</div>
							<div class="comment-form mt-30">
								<h4 class="comment-form-title font-alt">Add review</h4>
								<form method="post">
									<div class="row">
										<div class="col-sm-4">
											<div class="form-group">
												<label class="sr-only" for="name">Name</label> <input
													class="form-control" id="name" type="text" name="name"
													placeholder="Name" />
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<label class="sr-only" for="email">Name</label> <input
													class="form-control" id="email" type="text" name="email"
													placeholder="E-mail" />
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<select class="form-control">
													<option selected="true" disabled="">Rating</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
												</select>
											</div>
										</div>
										<div class="col-sm-12">
											<div class="form-group">
												<textarea class="form-control" id="" name="" rows="4"
													placeholder="Review"></textarea>
											</div>
										</div>
										<div class="col-sm-12">
											<button class="btn btn-round btn-d" type="submit">Submit
												Review</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr class="divider-w">
	<section class="module">
		<div class="container">
			<div class="col-sm-8 col-sm-offset-2">
				${itemContent.item_content}</div>
		</div>
	</section>
	<section class="module-small">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<h2 class="module-title font-alt">RECOMMENDED STYLE</h2>
				</div>
			</div>
			<div class="row multi-columns-row">
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="assets/images/shop/product-11.jpg"
								alt="Accessories Pack" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						<h4 class="shop-item-title font-alt">
							<a href="#">Accessories Pack</a>
						</h4>
						£9.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="assets/images/shop/product-12.jpg"
								alt="Men’s Casual Pack" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						<h4 class="shop-item-title font-alt">
							<a href="#">Men’s Casual Pack</a>
						</h4>
						£12.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="assets/images/shop/product-13.jpg" alt="Men’s Garb" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						<h4 class="shop-item-title font-alt">
							<a href="#">Men’s Garb</a>
						</h4>
						£6.00
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="shop-item">
						<div class="shop-item-image">
							<img src="assets/images/shop/product-14.jpg" alt="Cold Garb" />
							<div class="shop-item-detail">
								<a class="btn btn-round btn-b"><span class="icon-basket">Add
										To Cart</span></a>
							</div>
						</div>
						<h4 class="shop-item-title font-alt">
							<a href="#">Cold Garb</a>
						</h4>
						£14.00
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr class="divider-w">
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
								<a href="#"><img src="assets/images/shop/product-1.jpg"
									alt="Leather belt" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Leather belt</a>
								</h4>
								£12.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img src="assets/images/shop/product-3.jpg"
									alt="Derby shoes" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Derby shoes</a>
								</h4>
								£54.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img src="assets/images/shop/product-2.jpg"
									alt="Leather belt" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Leather belt</a>
								</h4>
								£19.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img src="assets/images/shop/product-4.jpg"
									alt="Leather belt" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Leather belt</a>
								</h4>
								£14.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img src="assets/images/shop/product-5.jpg"
									alt="Chelsea boots" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Chelsea boots</a>
								</h4>
								£44.00
							</div>
						</div>
					</div>
					<div class="owl-item">
						<div class="col-sm-12">
							<div class="ex-product">
								<a href="#"><img src="assets/images/shop/product-6.jpg"
									alt="Leather belt" /></a>
								<h4 class="shop-item-title font-alt">
									<a href="#">Leather belt</a>
								</h4>
								£19.00
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- footer 입니다 -->
	<%@include file="../include/footer.jsp"%>
	<!-- footer 입니다 -->