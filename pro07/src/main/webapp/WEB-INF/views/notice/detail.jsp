<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>공지사항 상세보기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <link rel="stylesheet" href="../include/datatables.min.css">
	<script src="../include/datatables.min.js"></script>
</head>
<body>
<header>
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
<section class="section">
	<div class="container">
	<h2 class="title"> 공지사항 상세보기 </h2>
		<table class="table" id="tb1">
			<tbody>
				<tr>
		      			<th><label for="tno">글 번호</label></th>
		      			<td>
		      				<input type="text" name="tno" id="tno" size="100" class="form-control" value="${dto.tno }" readonly required>
		      			</td>
		      		</tr>	
		      		<tr>
		      			<th><label for="title">글 제목</label></th>
		      			<td>
		      				<input type="text" name="title" id="title" size="100" class="form-control" value="${dto.title }" readonly required>
		      			</td>
		      		</tr>
		      		<tr>
		      			<th>글 내용</th>
		      			<td>
		      				<input type="text" name="content" id="content" size="100" class="form-control" value="${dto.content }" readonly required>
		      			</td>
		      		</tr>
		      		<tr>
		      			<th>작성일시</th>
		      			<td>
		      				<input type="text" name="regdate" id="regdate" size="100" class="form-control" value="${dto.regdate }" readonly required>
		      			</td>
		      		</tr>
		      		<tr>
		      			<th>읽은 횟수</th>
		      			<td>
		      				<input type="text" name="visited" id="visited" size="100" class="form-control" value="${dto.visited }" readonly required>
		      			</td>
		      		</tr>
			</tbody>
		</table>
		<div class="button-group">
			  <a class="button" href="${path1 }/notice/list">목록</a>
			  <a class="button" href="${path1 }/notice/delete.do?tno=${dto.tno}">삭제</a>
			  <a class="button" href="${path1 }/notice/edit?tno=${dto.tno}">수정</a>
			</div>
	</div>
</section>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
<script>
	$(document).ready( function () {
	    $('#tb1').DataTable();
	} );
	</script>		
</body>
</html>