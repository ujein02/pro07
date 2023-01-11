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
<title>기관소개</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <link rel="stylesheet" href="../include/datatables.min.css">
	<script src="../include/datatables.min.js"></script>
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
					<h2 style="color:#fff;">기관안내</h2>
				</div>
				<ul>
					<li class="lnb_dep1"><img alt="" src="${path1}/resources/img/icon_home.png">
						<a href="${path1 }/"><span>환경부</span></a>
					</li>
					<li class="lnb_dep1 on">
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
								<li class="lnb_dep2"><a href="${path1 }/qna/list.do">QNA</a></li>
							</ul>
					</li>
					<li class="lnb_dep1">
						<a href="${path1 }/content/info"><span>홍보</span></a>
					</li>
				</ul>
			</div>
			<div class="visual_wrap">
              <h1 class="title" style="color:#fff"> 환경부 인사말 </h1>
            </div>
          </div>
		<div class="sub_container">
		<div class="content_area">
			<div class="content_body" id="content_body">
	            <div class="message" style="min-height:460px;">
					<p class="message_txt01">환경부 홈페이지를 방문해 주신 여러분, 반갑습니다.</p><br><br>
	
					<p class="message_txt02">
					지금 우리는 전례 없는 이상기후와 <br/>
					다양하고 새로운 환경 이슈에 직면해 있습니다.<br/><br/>
					
					환경부는 '자율과 창의로 만드는 담대한 미래'란 국정 목표 아래<br/>
					'탄소중립 실현으로 지속 가능한 미래를 만들겠다'는 약속을  <br/>
					성실히 이행하겠습니다.<br/><br/>
					
					이를 위해 과학적인 탄소중립 이행과 녹색 경제 전환, <br/>
					기후 위기에 강한 물 환경과 자연 생태계 조성, <br/>
					미세먼지 걱정 없는 푸른 하늘, <br/>
					재활용을 통한 순환 경제 완성 등 <br/>
					주요 환경 과제들을 책임 있게 해결해 나가겠습니다. <br/><br/>
					
					과학기술과 혁신에 기반한 환경정책을 확립하고, <br/>
					소통과 협력으로 정책의 현장 적용성을 높이겠습니다. <br/><br/>
					
					국제 환경 질서에 능동적으로 대응하고, <br/>
					기존의 제도와 정책을 효율적으로 전환하겠습니다. <br/><br/>
					
					오로지 국민만을 바라보고<br/>
					박수받을 수 있는 환경부를 만들어 가겠습니다.<br/><br/>
					</p>
	
					<div class="sign">
					    <img class="sign" style="float:right; padding-right:100px" src="${path1 }/resources/img/ministor_sign.jpg" alt="환경부 장관 환화진" />
					</div>
			
				</div>
			</div>
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