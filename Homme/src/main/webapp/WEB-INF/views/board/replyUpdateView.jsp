<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			// 취소
			$(".cancel_btn").on("click", function(){
				location.href = "/board/boardview?b_no=${replyUpdate.b_no}"
					   + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}";
			})
		})
	</script>
		<section class="module bg-dark-30 about-page-header" data-background="/resourced/assets/images/about_bg.jpg">
          <div id="root">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">공지사항</h1>
              </div>
            </div>
          </div>
        </section>
	
				<section id="container">
				<form name="updateForm" role="form" method="post" action="/board/replyUpdate">
					<input type="hidden" name="b_no" value="${replyUpdate.b_no}" readonly="readonly"/>
					<input type="hidden" id="r_no" name="r_no" value="${replyUpdate.r_no}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					<table>
						<tbody>
							<tr>
								<td>
									<label for="r_content">댓글 내용</label><input type="text" id="r_content" name="r_content" value="${replyUpdate.r_content}"/>
								</td>
							</tr>	
							
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="button" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
<%-- 	<section id="container">
          <form name="updateForm" role="form" method="post" action="/board/replyUpdate">
          <div>
  <input type="hidden" id="b_no" name="b_no" value="${replyUpdate.b_no}" />
  <input type="hidden" id="r_no" name="r_no" value="${replyUpdate.r_no}" />
  <input type="hidden" id="page" name="page" value="${scri.page}"/> 
  <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"/> 
  <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"/> 
  <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"/>
          </div>
          <table>
			<tbody>
			<tr>				
				<td>
  				<label for="r_content">댓글 내용</label><textarea class="form-control" id="r_content" name="r_content" rows=5><c:out value="${replyUpdate.r_content}"/></textarea>
				</td>
			</tr>
			</tbody>
          </table>
   					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="button" class="cancel_btn">취소</button>
					</div>
	</form>
	</section> --%>
	
	<!-- footer 입니다 -->

	<%@include file="../include/footer.jsp"%>
	<!-- footer 입니다 -->