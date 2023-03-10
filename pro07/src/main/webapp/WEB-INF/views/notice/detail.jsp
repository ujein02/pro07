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
    <link rel="stylesheet" href="${path1 }/resources/css/datatables.min.css">
	<script src="${path1 }/resources/css/datatables.min.js"></script>
	<script>
	$(document).ready( function () {
	    $('#tb1').DataTable();
	} );
	</script>
	<style>
	.sub_container{background: url("${path1}/resources/img/bg.jpg") repeat; background-size:100%;}
	td{text-align:left;}
	th{width:20%;}
	</style>
</head>
<body>
<header>
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
						<a href="${path1 }/"><span>환경부</span></a>
					</li>
					<li class="lnb_dep1">
						<a href="${path1 }/content/intro"><span>기관안내</span></a>
					</li>
					<li class="lnb_dep1">
						<a href="#"><span>알림</span></a>
							<ul>
								<li class="lnb_dep2 on"><a href="${path1 }/notice/list">공지사항</a></li>
							</ul>
					</li>
					<li class="lnb_dep1">
						<a href="#"><span>국민소통</span></a>
							<ul>
								<li class="lnb_dep2"><a href="${path1 }/qna/list.do">QNA</a></li>
							</ul>
					</li>
					<li class="lnb_dep1">
						<a href="${path1 }/content/info"><span>홍보</span></a>
					</li>
				</ul>
			</div>
			<div class="visual_wrap">
              <h1 class="title" style="color:#fff"> 국민소통 </h1>
            </div>
          </div>
          <div class="sub_container">
			<h2 class="title"> 공지사항 상세보기 </h2>
				<table class="table" id="tb1">
					<tbody>
						<tr>
				      			<th>글 번호</th>
				      			<td>${dto.tno }</td>
				      		</tr>	
				      		<tr>
				      			<th>글 제목</th>
				      			<td>${dto.title }</td>
				      		</tr>
				      		<tr>
				      			<th>글 내용</th>
				      			<td>${dto.content }</td>
				      		</tr>
				      		<tr>
				      			<th>작성일시</th>
				      			<td>${dto.regdate }</td>
				      		</tr>
				      		<tr>
				      			<th>조회수</th>
				      			<td>${dto.visited }</td>
				      		</tr>
					</tbody>
				</table>
				<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
			      		<div class="btn-group me-2" role="group" aria-label="First group">
					    	<a href="${path1 }/notice/list" class="btn btn-dark">목록</a>
					  	</div>
					  	<c:if test='${sid eq "admin"}'>
					      	<div class="btn-group me-2" role="group" aria-label="Second group">
						    	<a href="${path1 }/notice/delete.do?tno=${dto.tno}" class="btn btn-dark">삭제</a>
						    </div>
						    <div class="btn-group me-2" role="group" aria-label="Third group">
					    		<a href="${path1 }/notice/edit?tno=${dto.tno}" class="btn btn-dark">수정</a>
							</div>
						</c:if>
				</div>
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