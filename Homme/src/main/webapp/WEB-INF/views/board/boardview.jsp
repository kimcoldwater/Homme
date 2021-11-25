<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->

<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form[name='readForm']");
    // 목록
	$(".boardlist_btn").on("click", function(){

	location.href = "/board/boardlist?page=${scri.page}"
	+"&perPageNum=${scri.perPageNum}"
	+"&searchType=${scri.searchType}&keyword=${scri.keyword}";
	}) 
	//댓글 작성
	$(".replyWriteBtn").on("click", function(){
		  var formObj = $("form[name='replyForm']");
		  formObj.attr("action", "/board/replyWrite");
		  formObj.submit();
		});

//댓글 수정 View
	$(".replyUpdateBtn").on("click", function(){
		location.href = "/board/replyUpdateView?b_no=${boardview.b_no}"
						+ "&page=${scri.page}"
						+ "&perPageNum=${scri.perPageNum}"
						+ "&searchType=${scri.searchType}"
						+ "&keyword=${scri.keyword}"
						+ "&r_no="+$(this).attr("data-r_no");
	});
/* 		//댓글삭제
 		$(".replyDeleteBtn").on("click", function(){
		location.href = "/board/replyDeleteView?b_no=${boardview.b_no}"
			+ "&page=${scri.page}"
			+ "&perPageNum=${scri.perPageNum}"
			+ "&searchType=${scri.searchType}"
			+ "&keyword=${scri.keyword}"
			+ "&r_no="+$(this).attr("data-r_no");
	});  */
}) 
</script>
<script>
 		function replydel(r_no) {
			var deleteYN = confirm("삭제하시겠습니까?");
			if (deleteYN) {
					location.href='replyDelete?b_no'+"b_no"

			}
		}

</script>

<!-- 비동기 댓글 -->
<!-- <script>

function replywrite(code){
    
    $.ajax({
        type:'POST',
        url : "<c:url value='/board/replyWrite'/>",
        data:$("#replyForm").serialize(),
        success : function(data){
            if(data=="success")
            {
                getreplyList();
                $("#reply").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
$(function(){
    
    getreplyList();
    
});
 
/**
 * 댓글 불러오기(Ajax)
 */
function getReplyList(){
    
    $.ajax({
        type:'GET',
        url : "<c:url value='/board/replyList'/>",
        dataType : "json",
        data:$("#replyForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
            
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].r_writer+"</strong></h6>";
                    html += data[i].r_content + "<tr><td></td></tr>";
                    html += "</table></div>";
                    html += "</div>";
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#replyList").html(html);
            
        },
        error:function(request,status,error){
            
       }
        
    });
}

</script> -->

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
<form name="readForm" role="form" method="post">
  <input type="hidden" id="b_no" name="b_no" value="${boardview.b_no}" />
  <input type="hidden" id="page" name="page" value="${scri.page}"> 
  <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
  <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
  <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
</form>
                <form role="form" method="post">
                <h4 class="font-alt mb-0">공지사항</h4>
                <hr class="divider-w mt-10 mb-20">
                <button type="button" class="boardlist_btn">목록</button>
                <div class="form-group">
                  <label for="b_no">글번호</label><input class="form-control input-lg" name="b_no" id="b_no" type="text" value="${boardview.b_no}" readonly=""/>
                </div>
                <div class="form-group">
                  <label for="b_title">제목</label><input class="form-control input-lg" name="b_title" id="b_title" type="text" value="${boardview.b_title}" readonly=""/>
                </div>
				<div class="form-group">
                  <label for="b_writer">작성자</label><input class="form-control input-lg" name="b_writer" id="b_writer" type="text" value="${boardview.b_writer}" readonly=""/>
				</div>
				<div class="form-group">
                  <label for="b_date">작성날짜</label><fmt:formatDate value="${boardview.b_date}" pattern="yyyy-MM-dd"/>
				</div>
				<div>
				<div class="card">
				<label for ="b_content"></label>내용
				</div>
				${boardview.b_content}
				</div>
                
	

           </form>
          <!-- 댓글 목록 -->
           <form id="reply">
       			<div >
  					<ol class="replyList">
				    <c:forEach items="${replyList}" var="replyList">
				<div class="form-group">
                  <label for="r_date"></label>댓글 날짜<fmt:formatDate value="${replyList.r_date}" pattern="yyyy-MM-dd" />
                  <br/>
                  <label for="r_writer"></label>댓글 작성자<input class="form-control input-lg" name="r_writer" id="r_writer" type="text" value="${replyList.r_writer}" readonly=""/>
                  <br/>
                  <label for="r_content"></label>댓글 내용<textarea class="form-control" id="r_content" name="r_content" rows=5  readonly=""><c:out value="${replyList.r_content}"/></textarea>
                  <div>
  <a href="/board/replyUpdateView?r_no=${replyList.r_no}" role="button " class="btn btn-b btn-round">수정</a>
<%--   <button type="button" class="replyUpdateBtn" data-r_no="${replyList.r_no}">수정</button>
  <button type="button" class="replyDeleteBtn" data-r_no="${replyList.r_no}">삭제</button> --%>
  <input type="button" value="삭제" class="replydel" onclick="replydel(${boardview.b_no})">
</div>
				</div>
				<hr class="divider-w mt-10 mb-20">
    				</c:forEach>   
  					</ol>
				</div>
           </form>
           <hr class="divider-w mt-10 mb-20">
           <!-- 댓글 작성 -->
           <form name="replyForm" method="post">
  				<input type="hidden" id="b_no" name="b_no" value="${boardview.b_no}" />
  				<input type="hidden" id="page" name="page" value="${scri.page}"> 
  				<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
 				<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
  				<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 

  			<div>
   				 <label for="r_writer">댓글 작성자</label><input class="form-control input-lg" type="text" id="r_writer" name="r_writer" placeholder="이름을 입력해 주세요" required />
   				 <br/>
   				 <label for="r_content">댓글 내용</label><input class="form-control input-lg" type="text" id="r_content" name="r_content" placeholder="내용을 입력해 주세요" required />
  			</div>
  			<div>
 	 			<button type="button" class="replyWriteBtn">작성</button>
 			</div>
			</form>
			<div class="container">
			<!-- 비동기 댓글 -->
 <%--    <form id="replyForm" name="replyForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>댓글</strong></span> <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea style="width: 1100px" rows="3" cols="30" id="r_content" name="r_content" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href='#' onClick="replywrite('${result.code }')" class="btn pull-right btn-success">등록</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="b_no" name="b_no" value="${result.code }" />        
    </form>
</div>
<div class="container">
    <form id="replyListForm" name="replyListForm" method="post">
        <div id="replyList">
        </div>
    </form> --%>
</div>

        </section>
        
	<!-- footer 입니다 -->

	<%@include file="../include/footer.jsp"%>
	<!-- footer 입니다 -->