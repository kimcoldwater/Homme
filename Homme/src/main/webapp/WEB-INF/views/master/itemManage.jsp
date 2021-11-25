<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품뭐시기</title>

<%@include file="../include/header.jsp"%>
</head>
<div class="main">
        <section class="module bg-dark-30 about-page-header" data-background="assets/images/about_bg.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">Tabs &amp; Accordions</h1>
              </div>
            </div>
          </div>
        </section>
<header>
		<h4 align="center">상품뭐시기</h4>
</header>
<section id="container">
		<div class="container">
	<form role="form" method="get">
			<table class="table table-bordered table-sm" >
	<tr><th>상품번호</th>
		<th>상품이미지</th>
		<th>상품이름</th>
		<th>상품가격</th>
		<th>상품소개</th>
		<th>상품별점</th>
		<th>상품할인율</th>
		<th>상품수량</th>
		<th>상품대분류</th>
		<th>상품소분류</th>
		<th>삭제</th>
	</tr>
<c:forEach var="item" items="${list }">
<tr>
	<td><c:out value="${item.item_no}" /></td>
	<td><img src="/img/${item.item_imgmain}"></td>
	<td><c:out value="${item.item_name}" /></td>
	<td><c:out value="${item.item_price}" /></td>
	<td><c:out value="${item.item_content}" /></td>
	<td><c:out value="${item.item_star}" /></td>
	<td><c:out value="${item.item_disc}" /></td>
	<td><c:out value="${item.item_vol}" /></td>
	<td><c:out value="${item.item_catemain}" /></td>
	<td><c:out value="${item.item_catesub}" /></td>
	<td><input type="checkbox" onclick="location.href='/master/deleteitem?itemNo=${list.item_no}'" value="해제"></td>
	
</tr>

</c:forEach>	
	
</table>
</form>			
</div>
</section>






</div>
</html>
<%@include file="../include/footer.jsp"%>