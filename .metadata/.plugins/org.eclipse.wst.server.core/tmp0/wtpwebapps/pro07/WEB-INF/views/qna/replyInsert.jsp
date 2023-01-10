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
    <title>답변하기</title>
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
			<h2 class="title">답변하기</h2>
			<form name="frm1" id="frm1" action="${path1 }/qna/reInsert.do" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th>문의 제목</th>
							<td>${dto.title }</td>
						</tr>
						<tr>
							<th><label for="title">답변 제목</label></th>
							<td><input type="text" name="title" id="title" placeholder="제목 입력" class="form-control" required></td>
						</tr>
						<tr>
							<th><label for="content">답변 내용</label></th>
							<td>
								<textarea cols="100" rows="6" name="content" id="content" class="form-control"></textarea>
							</td>
						</tr>
						<tr>
							<th><label for="author">작성자</label></th>
							<td>
								<input type="text" name="author" id="author" class="form-control" value='admin' readonly required>
								<input type="hidden" name="lev" id="lev" value="1">
								<input type="hidden" name="parno" id="parno" value="${dto.parno }">
							</td>
						</tr>
						<tr>
							<th><label for="sec1">비밀글 여부</label></th>
							<td>
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
				    	<button type="submit" class="btn btn-dark">등록</button>
				  	</div>
			      	<div class="btn-group" role="group" aria-label="Second group">
				    	<a type="button" href="${path1 }/qna/list" class="btn btn-dark">목록</a>
				  	</div>
				</div>
			</form>
		</div>
		</div>	
	</section>
  <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>