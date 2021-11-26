<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">


</script>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="{% static '/master/itemManage.css %}">
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
		<h4 align="center"><a href="/">상품뭐시기</a></h4>
</header>
<section id="container">
<div class="row">
		<div class="container">
	<form role="form" method="post" action="/master/deleteItem">
			<table class="table table-boarderd" >
	<tr><th>상품 번호</th>
		<th >상품 이미지</th>
		<th>상품 이름</th>
		<th >상품 가격</th>
		<th>상품 소개</th>
		<th>상품 별점</th>
		<th >상품 할인율</th>
		<th>상품 수량</th>
		<th >상품대분류</th>
		<th >상품소분류</th>
	</tr>
<c:forEach var="item" items="${ilist}">
<tr>
	<td><c:out value="${item.item_no}" /></td>
	<td><img src="/img/${item.item_imgmain}"></td>
	<td><c:out value="${item.item_name}" /></td>
	<td><c:out value="${item.item_price}" /></td>
	<td>"${item.item_content}"</td>
	<td><c:out value="${item.item_star}" /></td>
	<td><c:out value="${item.item_disc}" /></td>
	<td><c:out value="${item.item_vol}" /></td>
	<td><c:out value="${item.item_catemain}" /></td>
	<td><c:out value="${item.item_catesub}" /></td>
	
</tr>

</c:forEach>	
	</table>
<div class="form-group">
<input id="item_name" name="item_name" class="form-control" type="text" style="width:800px;height:30px;" placeholder="삭제할상품명" />
</div>	
<div class="form-group" >
<button id="/master/deleteItem" class="btn btn-primary " type="submit" style="float: right;">삭제</button>
</div>	
</form>			
</div>
</div>
</section>






</div>
</html>
<%@include file="../include/footer.jsp"%>