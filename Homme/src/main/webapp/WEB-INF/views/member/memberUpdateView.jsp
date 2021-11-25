<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
//				document.getElementById('join_zip1').value = data.postcode1;
//				document.getElementById('join_zip2').value = data.postcode2;
				document.getElementById('post').value = data.zonecode;
				document.getElementById('address').value = data.address;
			}
		}).open();
	}
</script>
<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").on("click", function(){
				
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
				if($.trim($("#MEM_post").val())==""){
					alert("우편번호를 입력해주세요.");
					$("#MEM_post").focus();
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
				$.ajax({
					url : "/member/passChk",
					type : "POST",
					dateType : "json",
					data : $("#updateForm").serializeArray(),
					success: function(data){
						if(data==true){
							if(confirm("회원수정하시겠습니까?")){
								$("#updateForm").submit();
							}
						}else{
							alert("패스워드가 틀렸습니다.");
							return;
						}
					}
				})
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
                <h4 class="font-alt">Edit member information</h4>
                <hr class="divider-w mb-10">
                <form class="form" action="/member/memberUpdate" method="post" id="updateForm">
                  <div class="form-group">
                      <input class="form-control" id="MEM_ID" type="text" name="MEM_ID" value="${member.MEM_ID}" readonly="readonly"/>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_PW" type="text" name="MEM_PW" placeholder="PASSWORD"/>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_NAME" type="text" name="MEM_NAME" value="${member.MEM_NAME}"/>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_POST" type="text" name="MEM_POST" value="${member.MEM_POST}"/>
                    <input type=button value="우편번호검색" onClick="openDaumPostcode()">
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_ADR" type="text" name="MEM_ADR" value="${member.MEM_ADR}"/>
                  </div>  
                  <div class="form-group">
                    <input class="form-control" id="MEM_TEL" type="text" name="MEM_TEL" value="${member.MEM_TEL}"/>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="MEM_EMAIL" type="text" name="MEM_EMAIL" value="${member.MEM_EMAIL}"/>
                  </div>
                  <div class="form-group">
                    <button class="btn btn-block btn-round btn-b" type="submit" id="submit">Update</button>
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