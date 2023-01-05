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
<title>Qna 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
	<link rel="stylesheet" href="../include/datatables.min.css">
	<script src="../include/datatables.min.js"></script>
	<script>
	$(document).ready( function () {
	    $('#tb1').DataTable();
	} );
	</script>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
   
</header>
	<section class="section">
    <div class="container">
		<h2 class="title">Qna</h2>
		<table class="table" id="tb1">
			<thead>
				<tr>
					<th scope="col"></th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${qnaList }" var="qna" varStatus="status">
			<tr>
				<td scope="row"><span style="color:transparent">${qna.parno }</span></td>
				<td>
				<c:if test="${qna.lev==0}">
					<c:if test='${qna.sec.equals("Y")}'>
						<c:if test='${sid.equals(qna.author) || sid.equals("admin")}'>
							<a href="${path1 }/qna/detail?qno=${qna.qno }">${qna.title }</a>
						</c:if>
						<c:if test='${sid!=qna.author && sid!="admin" && not empty sid }'>
							<span>${qna.title }</span>
						</c:if>	
						<c:if test='${empty sid }'>
							<span>${qna.title }</span>
						</c:if>	
					</c:if>		
					<c:if test='${qna.sec.equals("N") && not empty sid}'>	
						<a href="${path1 }/qna/detail?qno=${qna.qno }">${qna.title }</a>
					</c:if>		
					<c:if test='${qna.sec.equals("N") && empty sid}'>
						<span>${qna.title }</span>
					</c:if>
				</c:if>
				<c:if test="${qna.lev==1}">
					<c:if test='${qna.sec.equals("Y")}'>
						<c:if test='${sid.equals(qna.author) || sid.equals("admin")}'>
							<a href="${path1 }/qna/detail?qno=${qna.qno }" style="padding-left:30px;">RE:${qna.title }</a>
						</c:if>
						<c:if test='${sid!=qna.author && sid!="admin" && not empty sid }'>
							<span style="padding-left:30px;">RE:${qna.title }</span>				
						</c:if>
						<c:if test='${empty sid }'>
							<span style="padding-left:30px;">RE:${qna.title }</span>				
						</c:if>
					</c:if>
					<c:if test='${qna.sec.equals("N") && not empty sid}'>	
						<a href="${path1 }/qna/detail?qno=${qna.qno }" style="padding-left:30px;">RE:${qna.title }</a>
					</c:if>							
					<c:if test='${qna.sec.equals("N") && empty sid}'>
				 		<span style="padding-left:30px;">RE:${qna.title }</span>
					</c:if>
				</c:if>
				</td>
				<td>${qna.author }</td>
				<td>
					<fmt:parseDate value="${qna.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		      	</td>
			</tr>
			</c:forEach>	
			</tbody>
		</table>
		<!--<c:if test='${not empty sid}'>-->
		<div class="btn-group">
			<a href="${path1 }/qna/insert" class="btn btn-dark">글 등록</a>
		</div>
		<!--</c:if>-->
		</div>	
	</section>
	
</body>
<footer id="footer" >
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>	
</html>