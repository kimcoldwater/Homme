<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<%@include file="../include/header.jsp"%>

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
		<h4 align="center">게시글</h4>
	</header>
	<hr />			
	<section id="container">
		<div class="container">
		<form role="form" method="get">
			<table class="table table-bordered table-sm" >
			<tr><th>글번호</th><th>제목</th><th>작성자</th><th>카테고리</th></tr>
						
	<c:forEach items="${list2}" var = "list">
			<tr>
				<td><c:out value="${list.b_no}" /></td>
				<td><c:out value="${list.b_title}" /></td>
				<td><c:out value="${list.b_writer}" /></td>
				<td><c:out value="${list.b_cate}" /></td>

			</tr>
	</c:forEach>
						
	</table>
	<div class="search2">
	<select name="searchType">
	<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
	 <option value="a"<c:out value="${scri.searchType eq 'a' ? 'selected' : ''}"/>>글번호</option>
      <option value="b"<c:out value="${scri.searchType eq 'b' ? 'selected' : ''}"/>>제목</option>
      <option value="d"<c:out value="${scri.searchType eq 'd' ? 'selected' : ''}"/>>작성자</option>
      <option value="cate"<c:out value="${scri.searchType eq 'cate' ? 'selected' : ''}"/>>카테고리</option>
      
	</select>
	<span class="input-group-btn pull-right">
	<button id="searchBtn" type="button" class="btn btn-default pull-right"  >검색</button></span>
	 <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" style="width:500px;" class="pull-right form-control" />	 
    
    <script>

     
        $('#searchBtn').click(function() {
        	console.log("검색");
          self.location = "boardManage" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
        });
      
    </script>
	</div>
</form>
</div>
</section>
<hr />
<hr />

<header>
		<h4 align="center">빵빵 자동차 지나가요</h4>
	</header>
	<hr />
	<section class="module">
<div class="container">
<div class="row">
<div class="col-sm-8 col-sm-offset-2">
<h4 class="font-alt mb-0">게시판 관리</h4>
<hr class="divider-w mt-10 mb-20">
<div role="tabpanel">
<ul class="nav nav-tabs font-alt" role="tablist">
  <!-- <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#u">공지사항 등록</a>
  </li> -->
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#x">게시글 삭제</a>
  </li>
</ul>
<div class="tab-content">

<!-- <div class="tab-pane fade in active" id="u">
 <form action="disableMember" method="post">

<input type="text" id="boardcate" name="boardcate" class="form-control" placeholder="정지할 아이디 입력"><br>
<button id="memberstop" class="btn btn-primary " type="submit" style="float: right;">정지</button>
</form>
</div>  -->



<div class="tab-pane fade" id="x">
<form action="deleteBoard" method="post">
<input type="text" id="boardNo" name="boardNo" class="form-control" placeholder="삭제시킬 게시판 번호"><br>
<button id="deleteboard" class="btn btn-primary " type="submit" style="float: right;">삭제</button>
</form>
</div>

</div>

</div>
</div>
</div>
</div>
</section>
	
		
        </div>
<%@include file="../include/footer.jsp"%>