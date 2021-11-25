<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->

<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").on("click", function(){
				
				if($.trim($("#MEM_PW").val())==""){
					alert("비밀번호를 입력해주세요.");
					$("#MEM_PW").focus();
					return false;
				}
				$.ajax({
					url : "/member/passChk",
					type : "POST",
					dateType : "json",
					data : $("#delForm").serializeArray(),
					success: function(data){
						if(data==true){
							if(confirm("회원탈퇴하시겠습니까?")){
								$("#delForm").submit();
							}
						}else{
							alert("패스워드가 틀렸습니다.");
							return;
						}
					}
			});
		})
		
</script>
       <div class="main" >
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
              <div class="col-sm-5 col-sm-offset-1 mb-sm-40" >
                <h4 class="font-alt">Delete Account</h4>
                <hr class="divider-w mb-10">
                <form class="form" action="/member/memberDelete" method="post" id="delForm">
                  <div class="form-group">
                      <input class="form-control" id="MEM_ID" type="text" name="MEM_ID" value="${member.MEM_ID}" readonly="readonly"/>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_NAME" type="text" name="MEM_NAME" value="${member.MEM_NAME}" readonly="readonly"/>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_PW" type="text" name="MEM_PW" placeholder="PASSWORD"/>
                  </div> 
                  <div>
                  <textarea name="content"  id="content" rows="5" cols="40"
      						class="form-control" placeholder="Reason for withdrawal"></textarea>
                  </div> 
                  <div class="form-group">
                    <button class="btn btn-block btn-round btn-b" type="submit" id="submit">Delete</button>
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