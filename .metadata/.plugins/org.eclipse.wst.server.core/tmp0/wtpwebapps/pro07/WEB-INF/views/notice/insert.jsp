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
<title>공지사항 등록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
<section class="section">
	<div class="container">
	<h2>공지사항 등록 </h2>
		<form action="${path1 }/notice/insert.do" method="post">
		<table class="table" id="table1">
	      	<tbody>
	      		<tr>
	      			<th><label for="exampleFormControlInput1" class="form-label">글 제목</label></th>
	      			<td>
	      				<input type="text" name="title" id="title" placeholder="제목 입력" maxlength="98" required class="form-control">
	      			</td>
	      		</tr>
	      		<tr>
	      			<th ><label for="exampleFormControlTextarea1" class="form-label">글 내용</label></th>
	      			<td>
	      				<textarea name="content" id="content" class="form-control" placeholder="내용 입력" rows="8" cols="100" maxlength="800" required></textarea>
	      			</td>
	      		</tr>

		      	</tbody>
		      </table>
	      	<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
	      		<div class="btn-group me-2" role="group" aria-label="First group">
			    	<button type="submit" class="btn btn-dark">등록</button>
			  	</div>
		      	<div class="btn-group" role="group" aria-label="Second group">
			    	<a type="button" href="${path1 }/notice/list" class="btn btn-dark">목록</a>
			  	</div>
			</div>
	    </form>
	</div>
</section>		
<footer id="footer">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>		
</body>
</html>