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
<title>공지사항 수정</title>
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
	<hr>
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
	          <h2 class="title">공지사항 글 수정</h2>
		      	<form action="${path1 }/notice/edit.do" method="post">
				      <table class="table" id="tb1">
				      	<tbody class="tbody">
				      		<tr>
				      			<th><label for="exampleFormControlInput1" class="form-label">글 제목</label></th>
				      			<td>
				      				<input type="hidden" name="tno" id="tno" value="${dto.tno }" >
				      				<input type="text" name="title" id="title" class="form-control" placeholder="제목 입력" value="${dto.title }" maxlength="98" required>
				      			</td>
				      		</tr>
				      		<tr>
				      			<th><label for="exampleFormControlInput1" class="form-label">글 내용</label></th>
				      			<td>
				      				<textarea name="content" id="content" class="form-control" placeholder="내용 입력" rows="8" cols="100" maxlength="800" required>${dto.content }</textarea>
				      			</td>
				      		</tr>
				      	</tbody>
				      </table>
				      <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
				      		<div class="btn-group me-2" role="group" aria-label="First group">
						    	<button type="submit" class="btn btn-dark">수정</button>
						  	</div>
					      	<div class="btn-group me-2" role="group" aria-label="Second group">
						    	<a type="button" href="${path1 }/notice/list" class="btn btn-dark">목록</a>
						  	</div>
						</div>
				   </form> 
				  </div>  
	      </div>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>		
</body>
</html>