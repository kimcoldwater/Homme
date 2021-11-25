<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
<!-- header 입니다 -->
<%@include file="../include/header.jsp"%>
<!-- header 입니다 -->
	<style>
	.ck.ck-editor {
    	max-width: 1000px;
	}
	.ck-editor__editable {
	    min-height: 300px;
	}
	</style>
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
          <div class="container">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                <h4 class="font-alt mb-0">공지사항 작성</h4>
                <hr class="divider-w mt-10 mb-20">
                <form class="validation-form" role="form" method="post" action="/board/boardInsert" enctype="multipart/form-data">
                <div class="form-group">
                  <label for="b_title">제목</label><input class="form-control input-lg" name="b_title" id="b_title" type="text" placeholder="제목을 입력해 주세요" required/>
                </div>
				<div class="form-group">
                  <label for="b_writer">작성자</label><input class="form-control input-lg" name="b_writer" id="b_writer" type="text" placeholder="이름을 입력해 주세요" required/>
				</div>
				<div class="form-group">
                  <label for="b_cate">글 목록</label><select class="form-control input-lg" name="b_cate" id="b_cate">
                  										<option value="1"> 공지사항 </option>
                  										<option value="2"> 이벤트 </option>
                  										<option value="3"> Q&A </option>
                  										<option value="4"> F&Q </option>
                  										</select>
				</div>
				<div class="form-group">
					파일<input class="form-control input-lg" type="file" name="file">
				</div>
				<div class="form-group">
                  <textarea class="form-control" class="ckeditor" id="ckeditor" name="b_content" rows="20" cols="100" style="width: %; height:500px;"required>
                  </textarea>    
				</div>
                  <script>
             	 ClassicEditor
					.create( document.querySelector( '#ckeditor' ) ,{
						ckfinder: {
							uploadUrl: '/board/uploadImg',
						}
					})
					
					.catch( error => {
						console.error( error );
							   } );
//                  CKEDITOR.instances.b_content.getData();
                  </script>
                <div class="form-group">
                    <button class="form-control" id="writebtn" name="writebtn" type="submit">작성</button>

          
                  </div>
                </form>
              </div>
            </div>
            </div>
        </section>

<!-- 		<script type="text/javascript">
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
        </script> -->
	<!-- footer 입니다 -->
	<%@include file="../include/footer.jsp"%>
	<!-- footer 입니다 -->