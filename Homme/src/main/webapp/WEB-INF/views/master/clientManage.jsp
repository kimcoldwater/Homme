<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
</head>
<body>
<%@include file="../include/header.jsp"%>

<section class="module bg dark-30 about-page-header"
	data-background="/resources/assets/images/about_bg.jpg">
	<div id="root" class="root">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<h1>123123123123123123123</h1>
			</div>
		</div>
	</div>
</section>
<section class="module">
<div class="container">
<div class="row">
<div class="col-sm-8 col-sm-offset-2">
<h4 class="font-alt mb-0">회원관리</h4>
<hr class="divider-w mt-10 mb-20">
<div role="tabpanel">
<ul class="nav nav-tabs font-alt" role="tablist">
<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#정지">회원 정지</a></li>
<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#탈퇴">회원 탈퇴</a><li>
</ul>
<div class="tab-content">
<div class="tab-pane fade show active" id="정지">
<p>정지시키는법좀..</p>
</div>
<div class="tab-pane fade" id="탈퇴">
<p>탈퇴시키는법좀..</p>
</div>
</div>
	<table style="margin-left:auto; margin-right:auto; width:60%; height:50px; text-align:center;">
		<tr style="background-color: black">
<th>아이디</th><th>이름</th><th>이메일</th><th>전화</th>
		</tr>
<%-- <%
		ArrayList<MemberDto> list = membermanager.getMemberAll();
		for(MemberDto dto : list){
	%>
			<tr>
				<td><%=dto.getId() %></td>
				<td><%=dto.getName() %></td>
				<td><%=dto.getEmail() %></td>
				<td><%=dto.getTel() %></td>				
			</tr>
	<%
		}
	%> --%>
	</table>
</div>
</div>
</div>
</div>
</section>
</body>
</html>
<%@include file="../include/footer.jsp"%>