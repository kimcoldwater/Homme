<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>

<script>
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				
                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
				document.getElementById('MEM_POST').value = data.zonecode;
				document.getElementById('MEM_ADR').value = data.address;
			}
		}).open();
	}
</script>
<script type="text/javascript">
		$(document).ready(function(){
			var code = "";
			/* 인증번호 이메일 전송 */
			$("#EMAIL-CHK").click(function(){
			    console.log("EMAIL-CHK");
				var MEM_EMAIL = $("#MEM_EMAIL").val();            // 입력한 이메일
			    $.ajax({
			        type:"GET",
			        url:"mailCheck?MEM_EMAIL=" + MEM_EMAIL,
			        success:function(data){
			        	if(data == "error"){
			        		alert("이메일 주소가 올바르지 않습니다. 유효한 이메일 주소를 입력해주세요.");
							$("#MEM_EMAIL").attr("autofocus",true);
							$(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.");
							$(".successEmailChk").css("color","red");
			        	}else{	        		
							alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
			        		$("#EMAIL-CHECK").attr("disabled",false);
			        		$(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.");
			        		$(".successEmailChk").css("color","green");
			        		code = data;
			        	}
			        }
			    })
			})
			//이메일 인증번호 대조
			$("#EMAIL-CHK2").click(function(){
				if($("#EMAIL-CHECK").val() != code || $("#EMAIL-CHECK").val() == ""){
					$(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
					$(".successEmailChk").css("color","red");
					$("#EMAIL-CHECK").attr("autofocus",true);
				}else{
					$(".successEmailChk").text("인증번호가 일치합니다.");
					$(".successEmailChk").css("color","green");
					$("#EMAIL-CHECK").attr("disabled",true);
				}
			})
			
			$("#submit").on("click", function(){
				if($.trim($("#MEM_ID").val())==""){
					alert("아이디를 입력해주세요.");
					$("#MEM_ID").focus();
					return false;
				}
				if($.trim($("#MEM_PW").val())==""){
					alert("비밀번호를 입력해주세요.");
					$("#MEM_PW").focus();
					return false;
				}
				if($.trim($("#MEM_NAME").val())==""){
					alert("성명을 입력해주세요.");
					$("#MEM_NAME").focus();
					return false;
				}
				if($.trim($("#MEM_POST").val())==""){
					alert("우편번호를 입력해주세요.");
					$("#MEM_POST").focus();
					return false;
				}
				if($.trim($("#MEM_ADR").val())==""){
					alert("주소를 입력해주세요.");
					$("#MEM_ADR").focus();
					return false;
				}
				if($.trim($("#MEM_TEL").val())==""){
					alert("휴대전화를 입력해주세요.");
					$("#MEM_TEL").focus();
					return false;
				}
				if($.trim($("#MEM_EMAIL").val())==""){
					alert("이메일을 입력해주세요.");
					$("#MEM_EMAIL").focus();
					return false;
				}
				var idChkVal = $("#idChk").val();
				if(idChkVal == "N"){
					alert("중복확인 버튼을 눌러주세요.");
					return false;
				}
			});
		}) 
		function fn_idChk(){
			$.ajax({
				url : "/member/idChk",
				type : "post",
				dataType : "json",
				data : {"MEM_ID" : $("#MEM_ID").val()},
				success : function(result){
				console.log(result);
					if(result == 1){
						$("#idChk").hide();
						$("#idChk").text("사용중인 아이디입니다.");
						$("#idChk").css("color", "red");
						$("#idChk").show();
					}else if(result == 0){
						$("#idChk").attr("value", "Y");
						$("#idChk").hide();
						$("#idChk").text("사용할 수 있는 아이디입니다.");
						$("#idChk").css("color", "green");
						$("#idChk").show();
					}
				}
			})
		}
	</script>
<style type="text/css">
.table-column {
    text-align: center;
    font-size: 14px;
    background-color: #ddffaa;
}
.error {
    margin-left: 5px;
    color: red;
    font-size: 12px;
}
</style>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->
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
              <div class="col-sm-5 col-sm-offset-1 mb-sm-40" style="float: none; margin:0 auto;">
                <h4 class="font-alt">Register</h4>
                <hr class="divider-w mb-10">
                <form class="form" action="/member/Register" method="post">
                  <div class="form-group">
                    <input class="form-control" id="MEM_ID" name="MEM_ID" type="text"   placeholder="ID"/>
                  <button class="idChk" type="button" id="idChk" onclick="fn_idChk()" value="N">중복확인</button><p id="idChk"></p>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_PW" type="text" name="MEM_PW"  placeholder="PASSWORD"/>
                  </div>  
                  <div class="form-group">
                    <input  class="form-control" id="MEM_NAME" type="text" name="MEM_NAME"  placeholder="NAME"/>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_POST" type="text" name="MEM_POST"  placeholder="POST" readonly="readonly"/>
                    <button type="button" class="form-control" onclick="openDaumPostcode()"><i class="fa fa-search"></i> 우편번호 찾기</button>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_ADR" type="text" name="MEM_ADR"  placeholder="ADDRESS"/>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_TEL" type="text" name="MEM_TEL"  placeholder="PHONE"/>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="MEM_EMAIL" type="email" name="MEM_EMAIL"  placeholder="EMAIL"/>
                 </div>
                 <div>
                 <button class="form-control" type="button" id="EMAIL-CHK" >인증받기</button>
                  </div>
                  <div class="form-group">
                  <input class="form-control" id="EMAIL-CHECK" type="text" name="EMAIL_CHECK"  placeholder="EMAIL_CHECK"/>
                 </div>
                 <div>
                 <button class="form-control" type="button" id="EMAIL-CHK2" >인증하기</button>
                  </div>
                  <span class="point successEmailChk">이메일 입력후 인증번호 보내기를 해주십시오.</span>
				 <div>
				 <input type="hidden" id="emailDoubleChk"/>
                 </div>
                  <div class="form-group">
                    <button class="btn btn-block btn-round btn-b" type="submit" id="submit">Register</button>
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