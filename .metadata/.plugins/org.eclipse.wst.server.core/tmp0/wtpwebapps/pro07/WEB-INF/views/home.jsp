<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home</title>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="include/head.jsp"></jsp:include>
    <script src="${path1 }/resource/css/styles.js"></script>
</head>
<body>
<header id="header">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="include/header.jsp"></jsp:include>
</header>
<div class="container">
	<section class="section">
		<div id="visual_content" class="mainVisual">
	       <div class="catch">
	
	<p>국민이 안심할 수 있는 <strong>환경</strong>,<br><strong>탄소중립</strong>으로 도약하는 대한민국</p>
	       </div>
	               
		</div>
		
		<div class="row">
		    <div class="col">
		      <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${path1}/resources/img/main2.png" class="d-block w-33" alt="이미지">
				    </div>
				    <div class="carousel-item">
				      <img src="${path1}/resources/img/main3.png" class="d-block w-33" alt="이미지">
				    </div>
				    <div class="carousel-item">
				      <img src="${path1}/resources/img/main4.jpg" class="d-block w-33" alt="이미지">
				    </div>
				  </div>
			</div>
		   </div>
		   <div class="col">
		      
		      <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${path1}/resources/img/main11.jpg" class="d-block w-33" alt="이미지">
				    </div>
				    <div class="carousel-item">
				      <img src="${path1}/resources/img/main12.jpg" class="d-block w-33" alt="이미지">
				    </div>
				    <div class="carousel-item">
				      <img src="${path1}/resources/img/main13.jpg" class="d-block w-33" alt="이미지">
				    </div>
				  </div>
			</div>
		    </div>
		    <div class="col">
		      <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${path1}/resources/img/main6.jpg" class="d-block w-33" alt="이미지">
				    </div>
				    <div class="carousel-item">
				      <img src="${path1}/resources/img/main7.jpg" class="d-block w-33" alt="이미지">
				    </div>
				    <div class="carousel-item">
				      <img src="${path1}/resources/img/main8.jpg" class="d-block w-33" alt="이미지">
				    </div>
				  </div>
			</div>
		    </div>
	  	</div>
	</section>	  	
</div>
<footer id="footer" class="footer-nav row expanded collapse">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="include/footer.jsp"></jsp:include>
</footer>   
</body>

</html>
