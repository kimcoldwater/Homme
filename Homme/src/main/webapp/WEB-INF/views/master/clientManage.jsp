<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(document).ready(function(){
var msg = "${aaa}";	
	if(msg != ''){
		alert(msg);
	}

});

</script>


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
		<h4 align="center"> 게시판</h4>
	</header>
	<hr />			
	<section id="container">
		<div class="container">
		<form role="form" method="get">
			<table class="table table-bordered table-sm" >
			<tr><th>아이디</th><th>이름</th><th>이메일</th><th>전화번호</th></tr>
						
	<c:forEach items="${list}" var = "list">
			<tr>
				<td><c:out value="${list.mem_id}" /></td>
				<td><c:out value="${list.mem_name}" /></td>
				<td><c:out value="${list.mem_email}" /></td>
				<td><fmt:formatDate value="${list.mem_tel}"/></td>
			</tr>
	</c:forEach>
						
	</table>
	<div  class="search">
	<select name="searchType">
	<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
	 <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>아이디</option>
      <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>이름</option>
      <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>이메일</option>
      <option value="j"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>전화번호</option>
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
</section>
<section class="module">
<div class="container">
<div class="row">
<div class="col-sm-8 col-sm-offset-2">
<h4 class="font-alt mb-0">회원관리</h4>
<hr class="divider-w mt-10 mb-20">
<div role="tabpanel">
<ul class="nav nav-tabs font-alt" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#s">회원 정지</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#d">회원 탈퇴</a>
  </li>
</ul>
<div class="tab-content">

<div class="tab-pane fade in active" id="s">
<form action="disableMember" method="post">

<input type="text" id="memberId" name="memberId" class="form-control" placeholder="정지할 아이디 입력"><br>
<button id="memberstop" class="btn btn-primary " type="submit" style="float: right;">정지</button>
</form>
</div>



<div class="tab-pane fade" id="d">
<form action="deleteClient" method="post">
<input type="text" id="memberId" name="memberId" class="form-control" placeholder="탈퇴시킬 아이디 입력"><br>
<button id="memberstop" class="btn btn-primary " type="submit" style="float: right;">탈퇴</button>
</form>
</div>

</div>

</div>
</div>
</div>
</div>
</section>

<%@include file="../include/footer.jsp"%>