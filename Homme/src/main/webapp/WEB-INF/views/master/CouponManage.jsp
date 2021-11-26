<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<h4 align="center">쿠폰발급</h4>
</header>
<section id="container">
		<div class="container">
	<form role="form" method="get">
			<table class="table table-bordered table-sm" >
	<tr><th>쿠폰 번호</th>
		<th>쿠폰 이름</th>
		<th>쿠폰 할인율</th>
		<th>쿠폰 만기일</th>	
		<th>삭제</th>
	</tr>
<c:forEach var="cpn" items="${list }">
<tr>
	<td><c:out value="${cpn.cpn_no}" /></td>
	<td><c:out value="${cpn.cpn_name}" /></td>
	<td><c:out value="${cpn.cpn_disc}" /></td>
	<td><c:out value="${cpn.cpn_edate}" /></td>
	<td><input type="checkbox" onclick="location.href='/master/deleteitem?itemNo=${list.item_no}'" value="해제"></td>	
</tr>
</c:forEach>		
</table>
<div  class="cousearch">
	<select name="searchType">
	<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
	
	 <option value="couno"<c:out value="${scri.searchType eq 'n' ? 'selected' : ''}"/>>쿠폰 번호</option>
	 <option value="couname"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>쿠폰 할인율</option>
      <option value="coudisc"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>쿠폰 만기일</option>
      <option value="couedate"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>쿠폰 이름</option>
	</select>
	<span class="input-group-btn pull-right">
	<button id="searchBtn" type="button" class="btn btn-default pull-right"  >검색</button></span>
	 <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" style="width:500px;" class="pull-right form-control" />	 
    
    <script>
      $(function(){
        $('#searchBtn').click(function() {
          self.location = "clientManage" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
        });
      });   
    </script>
</div>
</form>
</div>
<section class="module">
<div class="container">
<div class="row">
<h4 align="center">쿠폰발급</h4>
<form action="newcoupon" method="post" style="text-align: center;">
<div class="form-group">
<input id="cpn_name" name="cpn_name" class="form-control" type="text" style="width:800px;height:30px; " placeholder="쿠폰생성" />
</div>
<div class="form-group">
  <input class="form-control" id="cpn_disc" name="cpn_disc" type="text" style="width:800px;height:30px; " placeholder="쿠폰 할인율"/>
</div>
<div class="form-group" >
  <input class="form-control" id="cpn_edate" name="cpn_edate" type="date" style="width:800px;height:30px;" placeholder="쿠폰 만기일"/>
</div>

<div class="form-group">
<button id = "createbtn" type="submit" class="btn btn-primary mb-3" style="float: middle;">생성</button>
</div>
</form>
	
<form action="deletecoupon" method="post" name="deletecoupon">
<div class="form-group">
<input id="cpn_name" name="cpn_name" class="form-control" type="text" style="width:800px;height:30px;" placeholder="삭제할쿠폰명" />
</div>
<div class="form-group" style="text-align: center;">
<button id = "createbtn" type="submit" class="btn btn-primary mb-3" style="float: right;">삭제</button>
</div>
</form>
</div>
</div>
</section>
</section>		
</div>

<%@include file="../include/footer.jsp"%>