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
   <style>
   td first-child {width:1%;}
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
					<h2 style="color:#fff;">공지사항</h2>
				</div>
				<ul>
					<li class="lnb_dep1"><img alt="" src="${path1}/resources/img/icon_home.png">
						<a href="${path1 }/"><span>환경부</span></a>
					</li>
					<li class="lnb_dep1">
						<a href="#"><span>기관안내</span></a>
					</li>
					<li class="lnb_dep1">
						<a href="${path1 }/content/intro"><span>알림</span></a>
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
              <h1 class="title" style="color:#fff"> 알림 </h1>
            </div>
          </div>
		<div class="sub_container">
			<h2 class="title">공지사항 목록 </h2>
				<table class="table" id="tb1">
					<thead>
						<tr>
							<th scope="col" style="width:10%;">연번</th>
							<th scope="col" style="width:50%;">제목</th>
							<th scope="col">등록일</th>
							<th scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${noticeList }" var="notice" varStatus="status">
						<tr>
							<td scope="row">${status.count }</td>
							<td>
							<c:if test='${not empty sid}'>	
								<a href="${path1 }/notice/detail?tno=${notice.tno}">${notice.title }</a>
							</c:if>
							<c:if test='${empty sid}'>
								<span>${notice.title }</span>
							</c:if>	
							</td>
							<td>
								<fmt:parseDate value="${notice.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
					      		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
				      		</td>
							<td>${notice.visited }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<c:if test="${sid=='admin' }">
				<div class="btn-group">
					  <a class="btn btn-dark" href="${path1 }/notice/insert">글쓰기</a>
				</div>
				</c:if>
		</div>
	</div>
</section>
<footer id="footer" >
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/footer.jsp"></jsp:include>
</footer>		
</body>
</html>