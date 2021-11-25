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
													+ "</button>"
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
        <section class="module bg-dark-60 shop-page-header" data-background="assets/images/shop/product-page-bg.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Shop Products</h2>
                <div class="module-subtitle font-serif">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</div>
              </div>
            </div>
          </div>
        </section>
        <section class="module-small">
          <div class="container">
            <form class="row">
              <div class="col-sm-4 mb-sm-20">
                <select class="form-control">
                  <option selected="selected">Default Sorting</option>
                  <option>Popular</option>
                  <option>Latest</option>
                  <option>Average Price</option>
                  <option>High Price</option>
                  <option>Low Price</option>
                </select>
              </div>
              <div class="col-sm-2 mb-sm-20">
                <select class="form-control">
                  <option selected="selected">Woman</option>
                  <option>Man</option>
                </select>
              </div>
              <div class="col-sm-3 mb-sm-20">
                <select class="form-control">
                  <option selected="selected">All</option>
                  <option>Coats</option>
                  <option>Jackets</option>
                  <option>Dresses</option>
                  <option>Jumpsuits</option>
                  <option>Tops</option>
                  <option>Trousers</option>
                </select>
              </div>
              <div class="col-sm-3">
                <button class="btn btn-block btn-round btn-g" type="submit">Apply</button>
              </div>
            </form>
          </div>
        </section>
        <hr class="divider-w">
        <section class="module-small">
          <div class="container">
            <div class="row multi-columns-row">
            <form>
            <c:forEach items="${itemList}" var="itemList">
              <div class="col-sm-6 col-md-3 col-lg-3">
              
                <div class="shop-item">
                	<a href="/main/itemContent?item_no=${itemList.item_no}&page=${cri.page}&perPageNum=${cri.perPageNum}&catemain=${cri.catemain}&catesub=${cri.catesub}&sort=${cri.sort}">
                  <div class="shop-item-image"><img src="/img/${itemList.item_imgmain}" alt="Accessories Pack"/>
                    <div class="shop-item-detail"><img src="/img/${itemList.item_imgsub}" alt="Accessories Pack"/></div>
                  </div>
                  <h4 class="shop-item-title font-alt">${itemList.item_name}</h4>${itemList.item_price}
                  </a>
                </div>
              </div>
              </c:forEach>
              </form>
   
            </div>
   
                 <div class="row">
              <div class="col-sm-12">
     <div class="pagination font-alt">
  
    <c:if test="${pageMaker.prev}">
    <a href="/main/itemView${pageMaker.makeQuery(pageMaker.startPage - 1)}"><i class="fa fa-angle-left"></i></a>
    </c:if> 

    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    	<a class="active" href="/main/itemView${pageMaker.makeQuery(idx)}">${idx}</a>
    </c:forEach>

    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    	<a href="/main/itemView${pageMaker.makeQuery(pageMaker.endPage + 1)}"><i class="fa fa-angle-right"></i></a>
    </c:if> 

</div>
</div>
</div>
          </div>
        </section>



<!-- footer 입니다 -->

<%@include file="../include/footer.jsp"%>
<!-- footer 입니다 -->