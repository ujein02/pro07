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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인</title>
	<style>
	.table {width: 80vw; margin: 0 auto;}
	.form-control {width:50%;}
	</style>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<header id="header">
		<!-- 헤더 부분 인클루드 -->
	 	<jsp:include page="../include/header.jsp"></jsp:include>
    </header>
		<div class="row column text-center">
	      <h2 class="title">로그인</h2>
	      
	      <div class="container" style="width:80%;">
	      	<section class="section">
				<c:if test="${!empty msg }">
				<script>
				alert("로그인 실패");
				document.loginForm.id.focus();
				</script>
				</c:if>
				<form action="${path1 }/member/signin.do" method="post" name="loginForm">
					<table class="table">
						<tbody>
							<tr>
								<th><label for="id"><strong>아이디</strong></label></th>
								<td><input type="text" name="id" id="id" size="100" class="form-control" placeholder="아이디 입력" required>
								<!--  pattern="^[a-z0-9]+$"  -->
								</td>
							</tr>				
							<tr>
								<th><label for="pw"><strong>비밀번호</strong></label></th>
								<td><input type="password" name="pw" id="pw"  class="form-control" placeholder="비밀번호 입력" required>
								<!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
				      		<div class="btn-group me-2" role="group" aria-label="First group">
						    	<button type="submit" class="btn btn-dark">로그인</button>
						  	</div>
					      	<div class="btn-group" role="group" aria-label="Second group">
						    	<button type="reset" class="btn btn-dark">취소</button>
						    </div>
					 </div>
				</form>
				<script>
				function loginFaiure() {
					alert("로그인 실패");
				}
				</script>
			</section>
	      </div>
	    </div>
</body>
<footer id="footer" class="footer-nav row expanded collapse">
   	<!-- 푸터 부분 인클루드 -->
  	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</html>