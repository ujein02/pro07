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
<title>공지사항 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <link rel="stylesheet" href="${path1 }/resource/datatables.min.css">
	<script src="${path1 }/resource/datatables.min.js"></script>
	<script>
	$(document).ready( function () {
	    $('#tb1').DataTable({
	    	  aaSorting: []
	    	  //, order : [[ 0, "asc" ]]
	   	});
	});
	</script>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
	<h2>공지사항 목록 </h2>
		<table class="table" id="tb1">
			<thead>
				<tr>
					<th>No</th>
					<th>Title</th>
					<th>regdate</th>
					<th>visited</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${noticeList }" var="notice" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td><a href="${path1 }/notice/detail?tno=${notice.tno}">${notice.title }</a></td>
					<td>
						<fmt:parseDate value="${notice.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
			      		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		      		</td>
					<td>${notice.visited }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<div class="button-group">
			  <a class="button" href="${path1 }/notice/insert">글쓰기</a>
		</div>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>		
</body>
</html>