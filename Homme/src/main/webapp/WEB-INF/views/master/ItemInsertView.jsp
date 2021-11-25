<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
<!-- 에디터 css -->
<style>
 .ck-editor__editable
 {
    min-height: 400px !important;
 }
</style>
<script type="text/javascript">
	$(document).ready(function() {
		console.log('ready');

		optionAdd();
	});

	function optionAdd() {
		console.log('optionadd');
		var optionIndex = 1;
		//$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"<button type='button' style='float:right;' id='fileAddBtn'>"+"추가"+"</button></div>");
		$("#optionAdd_btn")
				.on(
						"click",
						function() {
							console.log('옵션추가');
							$("#optionIndex")
									.append(
											"  <div class='form-group'><input placeholder='옵션' class='form-control input-lg' type='text' style='float:left;' name='item_option"
													
													+ "' id='item_option'>"
													+ "<input type='number' name='item_vol' id='item_vol' placeholder='수량'>"
													+ "<button type='button' style='float:right;' id='optionDelBtn' class='btn-btn dark'>"
													+ "삭제" + "</button></div>"

									);

						});

		$(document).on("click", "#optionDelBtn", function() {
			$(this).parent().remove();

		});

	};

	function fnSubmit() {

		var email_rule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		// var tel_rule = /^\d{2,3}-\d{3,4}-\d{4}$/; 전화번호용

		if ($("#item_name").val() == null || $("#item_name").val() == "") {
			alert("상품명을 입력해주세요.");
			$("#item_name").focus();

			return false;
		}

		if ($("#item_price").val() == null || $("#item_price").val() == "") {
			alert("상품가격를 입력해주세요.");
			$("#item_price").focus();

			return false;
		}

		if ($("#item_size").val() == null || $("#item_size").val() == "") {
			alert("상품사이즈를 입력해주세요.");
			$("#item_size").focus();

			return false;
		}

		if ($("#item_color").val() == null || $("#item_color").val() == "") {
			alert("상품색상을 입력해주세요.");
			$("#item_color").focus();

			return false;
		}

		if ($("#item_vol").val() == null || $("#item_vol").val() == "") {
			alert("상품수량을 입력해주세요.");
			$("#item_vol").focus();

			return false;
		}

		if ($("#item_content").val() == null || $("#item_content").val() == "") {
			alert("상품내용을 입력해주세요.");
			$("#item_content").focus();

			return false;
		}

		if ($("#item_subcontent").val() == null
				|| $("#item_subcontent").val() == "") {
			alert("상품설명을 입력해주세요.");
			$("#item_subcontent").focus();

			return false;
		}

		if ($("#item_model").val() == null || $("#item_model").val() == "") {
			alert("모델정보를 입력해주세요.");
			$("#item_model").focus();

			return false;
		}

		if ($("#item_option").val() == null || $("#item_option").val() == "") {
			alert("상품옵션을 입력해주세요.");
			$("#item_option").focus();

			return false;
		}

		if ($("#itemMainImg").val() == null || $("#itemMainImg").val() == "") {
			alert("상품썸네일사진 등록해주세요.");
			$("#itemMainImg").focus();

			return false;
		}
		
		if ($("#itemSubImg").val() == null || $("#itemSubImg").val() == "") {
			alert("상품썸네일보조사진 등록해주세요.");
			$("#itemSubImg").focus();

			return false;
		}

		if (confirm("등록하시겠습니까?")) {

			$("#itemInsertForm").submit();

			return false;
		}
	}
	
	
	
</script>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->



<div class="main">
	<section class="module bg-dark-30 about-page-header"
		data-background="/resources/assets/images/about_bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-sm-offset-4">
					<h1 class="module-title font-alt mb-0">상품관리&amp;</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="module">
		<div class="container">
			<div class="row">
				<div class="col-sm-8" style="float: none; margin: 0 auto;">
					<h4 class="font-alt mb-0">상품등록</h4>
					<hr class="divider-w mt-10 mb-20">
					<div role="tabpanel">
						<ul class="nav nav-tabs font-alt" role="tablist">
							<li class="active"><a href="#itemInsert_1" data-toggle="tab"><span
									class="icon-tools-2"></span>기본정보</a></li>
							<li><a href="#itemInsert_2" data-toggle="tab"><span
									class="icon-tools-2"></span>옵션설정</a></li>
							<li><a href="#itemInsert_3" data-toggle="tab"><span
									class="icon-tools-2"></span>이미지설정</a></li>
						</ul>
						<form action="/master/itemInsert" method="post"
							name="itemInsertForm" id="itemInsertForm"
							enctype="multipart/form-data">

							<div class="tab-content">
								<!-- 상품등록 -->
								<div class="tab-pane active" id="itemInsert_1">
									<div class="form-group" style="">

										<h3>대분류</h3>
										<select class="form-control" name="item_catemain"
											id="item_catemain" title="상품 대분류">
											<option value="item">일반상품</option>
											<option value="mainpage">메인페이지</option>
											<option value="popularitem">인기상품</option>
										</select>
										<h3>소분류</h3>
										<select class="form-control" name="item_catesub"
											id="item_catesub" title="상품 소분류">
											<option value="jumper">Jumper</option>
											<option value="coat">Coat</option>
											<option value="jacket">Jacket</option>
											<option value="padding">Padding</option>
											<option value="shirts">Shirts</option>
											<option value="knit">Knit</option>
											<option value="halftee">1/2 Tee</option>
											<option value="long">Long</option>
											<option value="pants">Pants</option>
											<option value="denim">Denim</option>
											<option value="halfpants">1/2 Pants</option>
											<option value="jogger">jogger</option>
											<option value="sult">sult</option>
											<option value="boots">Boots</option>
											<option value="sneakers">Sneakers</option>
											<option value="walker">walker</option>
											<option value="derby">derby</option>
											<option value="sandal">sandal & slipper</option>

										</select>
									</div>
									<hr class="divider-w mt-10 mb-20">
									<div class="form-group">
										<h3>상품명</h3>
										<input class="form-control input-lg" type="text"
											placeholder="상품명" name="item_name" id="item_name" />
									</div>
									<hr class="divider-w mt-10 mb-20">
									<div class="form-group">
										<h3>판매가</h3>
										<input class="form-control input-lg" type="number"
											placeholder="판매가 / 단위 : 원" name="item_price" id="item_price" />
									</div>
									<hr class="divider-w mt-10 mb-20">

									<div class="form-group">
										<h3>사이즈</h3>
										<input class="form-control input-lg" type="text"
											placeholder="사이즈" name="item_size" id="item_size" />
									</div>
									<hr class="divider-w mt-10 mb-20">
									<div class="form-group">
										<h3>색상</h3>
										<input class="form-control input-lg" type="text"
											placeholder="색상" name="item_color" id="item_color" />
									</div>
									<hr class="divider-w mt-10 mb-20">

									<div class="form-group">
										<h3>상품설명</h3>
										<input class="form-control input-lg" type="text"
											placeholder="상품설명" name="item_subcontent"
											id="item_subcontent" />
									</div>
									<hr class="divider-w mt-10 mb-20">

									<div class="form-group">
										<h3>모델정보</h3>
										<input class="form-control input-lg" type="text"
											placeholder="모델정보" name="item_model" id="item_model" />
									</div>
									<hr class="divider-w mt-10 mb-20">

									<!-- 상품내용 에디터 -->

									<div class="form-group">
										<h3>상품내용</h3>
										<textarea class="form-control input-lg"
											placeholder="내용을 입력하세요" name="item_content" id="item_content">
											</textarea>

									</div>

									<script>
   									 ClassicEditor
       								.create( document.querySelector( '#item_content' ) ,{
       									ckfinder: {
       										uploadUrl: '/master/uploadImg',
       									}
       								})
       								
       								.catch( error => {
           								console.error( error );
     										   } );
   								
										</script>


									<a href="#itemInsert_2" data-toggle="tab"
										class="btn btn-d btn-circle" type="button"
										style="folat: right;">다음 <!-- onclick="document.getElementById('ttt').focus()" -->

									</a>







								</div>

								<!-- 상품등록 끝-->


								<!--  상품옵션 -->
								<div class="tab-pane" id="itemInsert_2">


									<button id="optionAdd_btn" class="btn btn-primary mb-3"
										type="button">옵션추가</button>

									<div id="optionIndex"></div>
									<br />
									<div class="form-group mt-3">
										<input class="form-control input-lg " type="text"
											placeholder="최소 1개의 옵션이 필요합니다. ex) 100 , red /// 95 , blue "
											readonly />
									</div>
									<a href="#itemInsert_1" data-toggle="tab"
										class="btn btn-d btn-circle" type="button"
										style="folat: right;">이전 <!-- onclick="document.getElementById('ttt').focus()" -->

									</a> <a href="#itemInsert_3" data-toggle="tab"
										class="btn btn-d btn-circle" type="button"
										style="folat: right;">다음 <!-- onclick="document.getElementById('ttt').focus()" -->

									</a>

								</div>
								<!--  상품옵션 끝 -->



								<!--  상품이미지 -->
								<div class="tab-pane" id="itemInsert_3">

									<div class="form-group">
										<h3>메인이미지 ( 썸네일 )</h3>
										<input class="form-control input-lg" type="file"
											name="itemMainImg" id="itemMainImg" />
									</div>
									
									<div class="form-group">
										<h3>서브이미지 ( 썸네일에 마우스 올릴시 )</h3>
										<input class="form-control input-lg" type="file"
											name="itemSubImg" id="itemSubImg" />
									</div>
									
									
									
									
									<br /> <a href="#itemInsert_2" data-toggle="tab"
										class="btn btn-d btn-circle" type="button"
										style="folat: right;">이전 <!-- onclick="document.getElementById('ttt').focus()" -->

									</a>

									<button class="btn btn-d btn-circle" type="button"
										onclick="fnSubmit(); return false;">상품등록</button>


								</div>
						</form>


						<!--  상품이미지 끝 -->






					</div>


				</div>


			</div>
		</div>
</div>
</section>



<!-- footer 입니다 -->

<%@include file="../include/footer.jsp"%>
<!-- footer 입니다 -->