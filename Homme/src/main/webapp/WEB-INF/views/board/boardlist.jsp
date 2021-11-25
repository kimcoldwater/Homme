<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>




<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$(".update_btn").on("click", function(){
				formObj.attr("action", "/board/updateview");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
/* 			// 삭제
			$(".delete_btn").on("click", function(){
				
				var deleteYN = confirm("삭제하시겠습니까?");
				if(deleteYN == true){
									
				formObj.attr("action", "/board/delete");
				formObj.attr("method", "post");
				formObj.submit();
				} 
			}) */
			
			// 취소
			$(".boardlist_btn").on("click", function(){
				
				location.href = "/board/boardlist";
			})
			// 멀티 정렬
/* 			   $(".sorting").click(function(){
				     
		            // ajax 통신
		            $.ajax({
		                type : "GET",            // HTTP method type(GET, POST) 형식이다.
		                url : "/board/boardlist",      // 컨트롤러에서 대기중인 URL 주소이다.
		                data : $("#sorting").serializeArray,					// Json 형식의 데이터이다. 
		                dataType : 'json',
		                success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
		                	sorting : [ {column : 'B_NO', order: "DESC"},
		                				{column : 'B_HIT', order: "ASC"},
		                				{column : 'B_DATE', order: "ASC"}]
		                },
		                error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
		                    alert("통신 실패.")
		                }
		            });
		        }); */
		})
	</script>
<script>
		//삭제
		function del(b_no) {
			var deleteYN = confirm("삭제하시겠습니까?");
			if (deleteYN) {
					location.href='delete?b_no='+b_no;
			}
		}

</script>
<style type="text/css">
li {
	list-style: none;
	float: left;
	padding: 6px;
}
</style>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->
<div class="main">
	<section class="module bg-dark-30 about-page-header"
		data-background="/resourced/assets/images/about_bg.jpg">
		<div id="root" class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<h1 class="module-title font-alt mb-0">공지사항</h1>
				</div>
			</div>
		</div>
	</section>

	<div class="card-header py-3">

		<c:choose>
			<c:when test="${scri.sort == null}">
	번호순
	</c:when>
			<c:when test="${scri.sort == ''}">
	번호순
	</c:when>
			<c:when test="${scri.sort == 'b_no'}">
	번호순
	</c:when>
			<c:when test="${scri.sort == 'b_hit'}">
	조회순
	</c:when>
			<c:when test="${scri.sort == 'b_date'}">
	최신순
	</c:when>
		</c:choose>
	</div>
	<form role="form" method="get">
		<button type="button"
			onclick="location.href='/board/boardlist?page=1&perPageNum=10&sort=b_no&searchType=${scri.searchType}&keyword=${scri.keyword}'"
			class="btn btn-outline-dark float-right ">번호순</button>
		<button type="button"
			onclick="location.href='/board/boardlist?page=1&perPageNum=10&sort=b_hit&searchType=${scri.searchType}&keyword=${scri.keyword}'"
			class="btn btn-outline-dark float-right" data-bs-toggle="button">조회순</button>
		<button type="button"
			onclick="location.href='/board/boardlist?page=1&perPageNum=10&sort=b_date&searchType=${scri.searchType}&keyword=${scri.keyword}'"
			class="btn btn-outline-dark float-right ">최신순</button>
	</form>
	<div>
		<ul>
			<c:if test="${pageMaker.prev}">
				<li><a
					href="boardlist${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="idx">
				<li><a href="boardlist${pageMaker.makeSearch(idx)}">${idx}</a></li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="boardlist${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
			</c:if>
		</ul>
	</div>
	<section id="container">

		<form name="readForm" role="form" method="get"
			action="/board/boardinsert">

			<h4 class="font-alt mb-0">공지사항</h4>
			<hr class="divider-w mt-10 mb-20">
			<div>
				<%@include file="nav.jsp"%>
			</div>
			<div>
				<!--                 	<select name="sorting">
                		<option value="0">번호</option>
                		<option value="1">조회수</option>
                		<option value="2">날짜</option>
                	</select> -->

			</div>
			<hr class="divider-w mt-10 mb-20">
			<table align="center">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
				<c:forEach items="${boardlist}" var="boardlist">
					<tr>
						<td width="50" align="center"><c:out
								value="${boardlist.b_no}" /></td>
						<td width="200" align="center"><a
							href="/board/boardview?b_no=${boardlist.b_no}&
                  									  page=${scri.page}&
                  									  perPageNum=${scri.perPageNum}&
                  									  searchType=${scri.searchType}&
                  									  keyword=${scri.keyword}"><c:out
									value="${boardlist.b_title}" /></a></td>
						<td width="50" align="center"><c:out
								value="${boardlist.b_writer}" /></td>
						<td width="100" align="center"><fmt:formatDate
								value="${boardlist.b_date}" pattern="yyyy-MM-dd" /></td>
						<td><c:out value="${boardlist.b_hit}" /></td>
						<td><a href="/board/updateview?b_no=${boardlist.b_no}"
							role="button " class="btn btn-b btn-round">수정</a></td>
						<td width="50" align="center"><input type="button" value="삭제"
							onclick="del(${boardlist.b_no})"></td>
						<!-- <td width="50" align ="center"><button type="submit" class="delete_btn">삭제</button></td> -->
					</tr>
				</c:forEach>
			</table>
			<div class="search">
				<select name="searchType">
					<option value="n"
						<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
					<option value="t"
						<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
					<option value="c"
						<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
					<option value="w"
						<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
					<option value="tc"
						<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
				</select> <input type="text" name="keyword" id="keywordInput"
					value="${scri.keyword}" />

				<button id="searchBtn" type="button">검색</button>
				<script>
      		$(function(){
        		$('#searchBtn').click(function() {
          			self.location = "boardlist" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val()+"&cate");
        		});
      			});   
    	</script>
			</div>
		</form>
	</section>
</div>
<!-- footer 입니다 -->

<%@include file="../include/footer.jsp"%>
<!-- footer 입니다 -->