<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).on('click','#findid',function(){
	$.ajax({
        url:'/member/findid',
        type:'POST',
        dataType : "json",
        data: {"MEM_NAME" : $("#MEM_NAME").val(), "MEM_EMAIL" : $("#MEM_EMAIL").val()},
        success:function(data){
        	var emailLists = data.MEM_EMAIL;
        	var emailLength = emailLists.length
        	var emailfind = emailLists.substring(1, emailLength-1)
       	 		 $("#emailList").append("<br>"+"회원님의 정보로 등록된 이메일은 : "+emailfind+" 입니다.</br>")

        },
        error: function (XMLHttpRequest, textStatus, errorThrown){
        	alert('정보를 다시 입력해주시길 바랍니다.');
        }
    });
});
</script>

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
              <div class="col-sm-5 col-sm-offset-1 mb-sm-40">
                <h4 class="font-alt">Forgot your ID?</h4>
                <hr class="divider-w mb-10">
                <form class="form">
                  <div class="form-group">
                    <input class="form-control" id="MEM_NAME" type="text" name="MEM_NAME" placeholder="NAME"/>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="MEM_EMAIL" type="email" name="MEM_EMAIL" placeholder="EMAIL"/>
                  </div>
                  <div class="form-group">
                    <button class="btn btn-block btn-round btn-b" type="button" id="findid">FIND</button>
                  </div>
                  <div>
                  <span id="emailList"></span>
                  </div>
                </form>
              </div>              
              </div>
            </div>
        </section>
    </main>


<!-- footer 입니다 -->
<%@include file="../include/footer.jsp"%>
<!-- footer 입니다 -->