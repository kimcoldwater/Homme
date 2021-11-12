<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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