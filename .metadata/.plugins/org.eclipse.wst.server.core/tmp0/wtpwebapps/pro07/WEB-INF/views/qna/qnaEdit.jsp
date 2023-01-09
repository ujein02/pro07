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
<title>질문 및 답변 수정하기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
	<style>
	.sub_container{background: url("${path1}/resources/img/bg.jpg") repeat; background-size:100%;}
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
			<div id="lnb_wrap" class="lnb">
				<div class="lnb_tit_hidden">
					<h2 style="color:#fff;">국민소통</h2>
				</div>
				<ul>
					<li class="lnb_dep1"><img alt="" src="${path1}/resources/img/icon_home.png">
						<a href="/home/web/index.do?menuId=304"><span>환경부</span></a>
					</li>
					<li class="lnb_dep1">
						<a href="/home/web/index.do?menuId=304"><span>기관안내</span></a>
					</li>
					<li class="lnb_dep1">
						<a href="/home/web/index.do?menuId=307"><span>알림</span></a>
							<ul>
								<li class="lnb_dep2"><a href="/home/web/index.do?menuId=307">공지사항</a></li>
							</ul>
					</li>
					<li class="lnb_dep1">
						<a href="/home/web/index.do?menuId=307"><span>국민소통</span></a>
							<ul>
								<li class="lnb_dep2 on"><a href="/home/web/index.do?menuId=307">QNA</a></li>
							</ul>
					</li>
					<li class="lnb_dep1">
						<a href="/home/web/index.do?menuId=304"><span>홍보</span></a>
					</li>
				</ul>
			</div>
			<div class="visual_wrap">
              <h1 class="title" style="color:#fff"> 국민소통 </h1>
            </div>
          </div>
		<div class="sub_container">
			<h2 class="title">질문 및 답변 수정하기</h2>
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
		</div>	
	</section>
	<script src="${path1 }/include/jquery.js"></script>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>		
</body>
</html>