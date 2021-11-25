<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(document).ready(function(){
	
	var formObj = $("form[name='loginForm']");
	
	$("#loginBtn").on("click", function(){
		formObj.attr("action", "/member/Login");
		formObj.attr("method", "post");
		formObj.submit();
		

	});
	
	$("#register").on("click", function(){
	location.href="/member/RegisterForm";
		

	});
	
});

</script>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->
     <div class="main">
        <section class="module bg-dark-30" data-background="assets/images/section-4.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">Login-Register</h1>
              </div>
            </div>
          </div>
        </section>
        </div>
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3 mb-sm-40">
                <h4 class="font-alt">Login</h4>
                <hr class="divider-w mb-10">
                <form class="form" method="post" action="/member/Login" name="loginForm">
                  <div class="form-group">
                    <input class="form-control" id="MEM_ID" type="text" name="MEM_ID" placeholder="ID"/>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="MEM_PW" type="password" name="MEM_PW" placeholder="PASSWORD"/>
                  </div>
                  <div >
                  	자동로그인
                  <input type="checkbox" name="useCookie">
                  </div>
                  <br />
                  <div class="form-group">
                    <button class="btn btn-round btn-b" type="button" id="loginBtn" >Login</button>
                    <button class="btn btn-round btn-b" type="button" id="register">Sing-up</button>
                  </div>
                  <div class="form-group"><a href="/member/userSearch">Forgot ID?</a></div>
                  <div class="form-group"><a href="/member/findPwView">Forgot PASSWORD?</a></div>
                </form>
              </div>
              </div>
              </div>
           </section>
    </main>
<!-- footer 입니다 -->
<%@include file="../include/footer.jsp"%>
<!-- footer 입니다 -->