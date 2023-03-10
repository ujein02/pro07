<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>질문 및 답변 상세 내용</title>
    <jsp:include page="../include/head.jsp"/>
	<link rel="stylesheet" href="${path1 }/resource/datatables.min.css">
	<script src="${path1 }/resource/datatables.min.js"></script>
	 <style>
	.sub_container{background: url("${path1}/resources/img/bg.jpg") repeat; background-size:100%;}
	</style>
  </head>
  <body>
  <jsp:include page="../include/header.jsp" />
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
								<li class="lnb_dep2"><a href="${path1 }/notice/list">공지사항</a></li>
							</ul>
					</li>
					<li class="lnb_dep1">
						<a href="#"><span>국민소통</span></a>
							<ul>
								<li class="lnb_dep2 on"><a href="${path1 }/qna/list.do">QNA</a></li>
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
			<h2 class="title">질문 및 답변 상세 내용</h2>
			<table class="table">
				<tbody>
					<tr>
						<th>구분</th>
						<td>
						<c:if test="${dto.lev eq 0}">
							<span>질문</span>
						</c:if>	
						<c:if test="${dto.lev ne 0}">
							<span>답변</span>
						</c:if>
						</td>
					</tr>
					<tr>
						<th >공개여부</th>
						<td>
						<c:if test='${dto.sec eq "Y" }'>
							<span>비공개</span>
						</c:if>	
						<c:if test='${dto.sec eq "N" }'>
							<span>공개</span>
						</c:if>
						</td>
					</tr>
					<tr>
						<th>번호</th>
						<td>${dto.qno }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${dto.title }</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${dto.content }</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${dto.author }</td>
					</tr>
					<tr>
						<th>작성일시</th>
						<td>${dto.regdate }</td>
					</tr>
					<tr>
						<th>읽은 횟수</th>
						<td>${dto.hit }</td>
					</tr>
				</tbody>
			</table>
			<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
				<div class="btn-group me-2" role="group" aria-label="First group">
					<a href="${path1 }/qna/list" class="btn btn-dark">목록</a>
				</div>
				<c:if test='${sid eq "admin" }'>
					<c:set var="lev" value="${dto.lev }"/>
					<c:if test="${dto.lev eq 0 }">
					<div class="btn-group me-2" role="group" aria-label="Second group">
						<a href="${path1 }/qna/reInsert?qno=${dto.qno }" class="btn btn-dark">답변 하기</a>
					</div>
					<div class="btn-group me-2" role="group" aria-label="Third group">
						<a href="${path1 }/qna/edit?qno=${dto.qno }" class="btn btn-dark">글 수정</a>
					</div>
					<div class="btn-group me-2" role="group" aria-label="4th group">
						<a href="${path1 }/qna/delete.do?qno=${dto.qno }" class="btn btn-dark">글 삭제</a>
					</div>
					
					</c:if>	
					<c:if test="${dto.lev eq 1 }">
					<div class="btn-group me-2" role="group" aria-label="5th group">
						<a href="${path1 }/qna/edit?qno=${dto.qno }" class="btn btn-dark">답글 수정</a>
					</div>	
					</c:if>	
				</c:if>	
				<c:if test="${sid eq dto.author }">
				<div class="btn-group me-2" role="group" aria-label="6th group">
					<a href="${path1 }/qna/edit?qno=${dto.qno }" class="btn btn-dark">글 수정</a>
				</div>	
					<a href="${path1 }/qna/delete.do?qno=${dto.qno }" class="btn btn-dark">글 삭제</a><br>
				
				</c:if>		
				
				</div>
				<c:if test="${sid ne dto.author}">
					<p style="clear:both; text-align:center;">글 작성자가 아닙니다.</p>
				</c:if>
			</div>	
		</div>
	</section>
  <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>