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

</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/header.jsp"></jsp:include>
</header>
	<section class="section">
    	<div class="container">
			<h2 class="title">질문 및 답변 상세 내용</h2>
			<form name="frm1" id="frm1" action="${path1 }/qna/edit.do" method="post">
				<input type="hidden" name="qno" id="qno" value="${dto.qno }"/>
				<table class="table">
					<tbody>
						<tr>
							<th><label for="title">질문 제목</label></th>
							<td><input type="text" name="title" id="title" placeholder="제목 입력" maxlength="100" class="form-control" value="${dto.title }" required></td>
						</tr>
						<tr>
							<th><label for="content">질문 내용</label></th>
							<td>
								<textarea cols="100" rows="6" name="content" id="content" maxlength="600" class="form-control">${dto.content }</textarea>
							</td>
						</tr>
						<tr>
							<th><label for="author">작성자</label></th>
							<td>
								<input type="text" name="author" id="author" class="form-control" value='${sid }' readonly required>
								<input type="hidden" name="lev" id="lev" value="${dto.lev }">
							</td>
						</tr>
						<tr>
							<th><label for="sec1">비밀글 여부</label></th>
							<td>
								<p>현재 상태 :
								<c:if test='${dto.sec.equals("Y") }'>
									<strong>비밀글</strong>
								</c:if>
								<c:if test='${dto.sec.equals("N") }'>
									<strong>공개</strong>
								</c:if>
								</p>
								<input type="radio" name="sec" id="sec1" value="N" checked>
								<label for="">공개</label>
								<input type="radio" name="sec" id="sec2" value="Y">
								<label for="">비밀글</label>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
		      		<div class="btn-group me-2" role="group" aria-label="First group">
				    	<button type="submit" class="btn btn-dark">수정</button>
				  	</div>
			      	<div class="btn-group me-2" role="group" aria-label="Second group">
				    	<a type="button" href="${path1 }/qna/list" class="btn btn-dark">목록</a>
				  	</div>
				  	<div class="btn-group" role="group" aria-label="Third group">
				    	<a type="button" href="${path1 }/qna/delete.do?qno=${dto.qno}" class="btn btn-dark">삭제</a>
				  	</div>
				</div>
			</form>
		</div>	
	</section>
	<script src="${path1 }/include/jquery.js"></script>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>		
</body>
</html>