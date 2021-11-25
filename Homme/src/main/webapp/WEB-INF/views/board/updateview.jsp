<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
		<link href="css/default.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="/resources/smartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $on("form[name='updateForm']");
			// 취소
			$(".cancel_btn").on("click", function(){
				event.prenventDefault();
				location.href = "/board/boardview?b_no=${update.b_no}"
					   + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}";
			})
		})
	</script>
        <section class="module bg-dark-30 about-page-header" data-background="/resourced/assets/images/about_bg.jpg">
          <div id="root" class="root">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt mb-0">공지사항</h1>
              </div>
            </div>
          </div>
        </section>

<section id="container">
                <form name="updateForm" role="form" method="post" action="/board/update">
                <h4 class="font-alt mb-0">공지사항</h4>
                <hr class="divider-w mt-10 mb-20">
                <div class="form-group">
                  <label for="b_no">글번호</label><input class="form-control input-lg" name="b_no" id="b_no" type="text" value="${updateview.b_no}" readonly=""/>
                </div>
                <div class="form-group">
                  <label for="b_title">제목</label><input class="form-control input-lg" name="b_title" id="b_title" type="text" value="${updateview.b_title}"/>
                </div>
				<div class="form-group">
                  <label for="b_writer">작성자</label><input class="form-control input-lg" name="b_writer" id="b_writer" type="text" value="${updateview.b_writer}" readonly=""/>
				</div>
				<div class="form-group">
                  <label for="b_date">작성날짜</label><fmt:formatDate value="${updateview.b_date}" pattern="yyyy-MM-dd" />
				</div>
                  <label for ="b_content"></label>내용<textarea class="form-control" id="b_content" name="b_content" rows=20><c:out value="${updateview.b_content}"/></textarea>

				<div>
					<button class="update_btn" type="submit">수정</button>
					<button class="cancel_btn" type="submit">취소</button>
				</div>
           </form>
        </section>
        
        		<script type="text/javascript">
        	var oEditors = [];
		$(document).ready(function(){
        	
        	nhn.husky.EZCreator.createInIFrame({
        		  oAppRef : oEditors,
        		  elPlaceHolder : "b_content",
        		  sSkinURI : "/resources/smartEditor/SmartEditor2Skin.html",
        		  fCreator : "createSEditor2",
        		  htParams : {
        			// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
        			bUseToolbar : true, 
        			// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
        			bUseVerticalResizer : true, 
        			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
        			bUseModeChanger : true,
        			
        		  }
        	});
		})
        </script>
        <script type="text/javascript">
        window.onload =function(){
        	var btn =document.getElementById("writebtn");
        	btn.onclick = function(){
        		submitContents(btn);
        	}
        }
        function submitContents(elClickedObj) 	{
        	oEditors.getById["b_content"].exec("UPDATE_CONTENTS_FIELD", []);
        	
        	try {
        		elClickedObj.form.submit();
        	} catch(e){
        		
        	}
        }
        </script>
	<!-- footer 입니다 -->

	<%@include file="../include/footer.jsp"%>
	<!-- footer 입니다 -->