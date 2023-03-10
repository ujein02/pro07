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
<title>회원 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
	.sub_container{padding-top:10vh;background: url("${path1}/resources/img/bg.jpg") repeat; background-size:100%;}
	</style>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
<section class="section">
	<div class="container">
		<div class="sub_visual visual01">
		<!-- start lnb-->
			<div class="visual_wrap">
              <h1 class="title" style="color:#fff">회원 목록 </h1>
            </div>
          </div>
          <div class="sub_container">
			
				<table class="table" id="tb1">
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">ID</th>
							<th scope="col">NAME</th>
							<th scope="col">REGDATE</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${memberList }" var="mem" varStatus="status">
						<tr>
							<td scope="row">${status.count }</td>
							<td><a href="${path1 }/member/detail.do?no=${mem.no}">${mem.id }</a></td>
							<td>${mem.name }</td>
							<td>
								<fmt:parseDate value="${mem.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
					      		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
				      		</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
	</div>
</section>
<footer id="footer" >
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>		
</body>
</html>