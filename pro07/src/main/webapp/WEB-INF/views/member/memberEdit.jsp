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
	<title>회원 정보 수정</title>
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
	
	<div class="content" id="con">
	    <div class="row column text-center">
	      <div class="container">
	      	<div class="sub_visual visual01">
		<!-- start lnb-->
			<div class="visual_wrap">
				<c:if test="${sid=='admin' }">
				<h1 class="title" style="color:#fff">회원 정보 수정</h1>
				</c:if>
				<c:if test="${sid!='admin' }">
				<h1 class="title" style="color:#fff">마이 페이지</h1>
				</c:if>
             
            </div>
          </div>
          <div class="sub_container">
	      	<section class="section">
	      	
	      	<hr>
				<form action="${path1 }/member/update.do" method="post" onsubmit="return updateCheck(this)">
				<div class="table_form_wrap">
					<table class="table">
						<tbody>
							<tr>
								<th><label for="id">아이디</label></th>
								<td><input type="text" name="id" id="id" size="100" class="form-control" value="${member.id }" readonly required>
								</td>
							</tr>				
							<tr>
								<th><label for="pw">비밀번호</label></th>
								<td><input type="password" name="pw" id="pw"  class="form-control" value="${member.pw }"  required>
									<!-- pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" <p>(최소 8자리에서 최대 16자리까지, 숫자, 영문 대소문자, 특수문자가 각 1 문자 이상 포함되어야 함)</p> -->
								</td>
							</tr>
							<tr>
								<th><label for="pw2">비밀번호 확인</label></th>
								<td><input type="password" name="pw2" id="pw2"  class="form-control" value="${member.pw }" required></td>
							</tr>
							<tr>
								<th><label for="name">이름</label></th>
								<td><input type="text" name="name" id="name" class="form-control"  value="${member.name }" required></td>
							</tr>
							<tr>
								<th><label for="email">이메일</label></th>
								<td><input type="email" name="email" id="email"  class="form-control" value="${member.email }" required></td>
							</tr>
							<tr>
								<th><label for="tel">전화번호</label></th>
								<td><input type="tel" name="tel" id="tel"  class="form-control"  value="${member.tel }"  required></td>
							</tr>
							<tr>
								<th><label for="" onclick="findAddr()">주소</label></th>
								<td>
									<input type="text" name="addr1" id="addr1" class="form-control" value="${member.addr1 }"><br>
									<input type="text" name="addr2" id="addr2"  class="form-control" value="${member.addr2 }"><br>
									<div class="row g-3">
				      					<div class="col-auto">
				      						<input type="text" name="postcode" id="postcode" class="form-control" value="${member.postcode }" maxlength="9" required>
				      					</div>
				      					<div class="col-auto">
										    <input type="button" id="isAddrBtn" class="btn btn-primary" value="우편번호" onclick="findAddr()">
				      						<input type="hidden" name="addrck" id="addrck" value="no"/>
										</div>
				      				</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
				      		<div class="btn-group me-2" role="group" aria-label="First group">
				      			<input type="submit" class="btn btn-dark" value="회원정보수정">
						    </div>
					      	<div class="btn-group me-2" role="group" aria-label="Second group">
						    	<button type="reset" class="btn btn-dark">취소</button>
						    </div>
						    <div class="btn-group me-2" role="group" aria-label="Third group">
						    	<c:if test="${sid!='admin' }">
									<a href="${path1 }/member/delete.do?id=${sid }" class="btn btn-dark">회원 탈퇴</a>
								</c:if>
							</div>
							<div class="btn-group me-2" role="group" aria-label="Third group">
									<c:if test="${sid=='admin' }">
									<a href="${path1 }/member/list.do" class="btn btn-dark">회원 목록</a>
								</c:if>
						    </div>
					 </div>
				</div>
				</form>
				<script>
				function updateCheck(f){
					if(f.pw.value!=f.pw2.value){
						alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
						return false;
					}
				}
				</script>
				<script>
				function findAddr() {
					new daum.Postcode({
						oncomplete: function(data) {
							console.log(data);
							var roadAddr = data.roadAddress;
							var jibunAddr = data.jibunAddress;
							document.getElementById("postcode").value = data.zonecode;
							if(roadAddr !== '') {
								document.getElementById("addr1").value = roadAddr;				
							} else if(jibunAddr !== ''){
								document.getElementById("addr1").value = jibunAddr;
							}
						}
					}).open();
				}
				</script>
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	      </section>
	     </div>
	      </div>
	    </div>
	</div>
</body>
<footer id="footer" class="footer-nav row expanded collapse">
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</html>