<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!-- 헤더 내용 기술 -->
<div class="container">
    <header class="d-flex align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="${path1 }/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <img src="${path1 }/resources/img/logo.png" alt="logo" />
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="${path1 }/" class="nav-link px-3 link-secondary">Home</a></li>
        <li><a href="#" class="nav-link px-3 link-secondary" >기관소개</a></li>
        <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" >알림</a>
	        <ul class="dropdown-menu" >
	          <li><a class="dropdown-item" href="${path1 }/notice/list.do">공지사항</a></li>
	        </ul>
        </li>
        <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#"data-bs-toggle="dropdown"  >국민소통</a>
	        <ul class="dropdown-menu" >
	          <li><a class="dropdown-item" href="${path1 }/qna/list.do">QNA</a></li>
	        </ul>
        </li>
        <li><a href="#" class="nav-link px-3 link-secondary">홍보</a></li>
        
      </ul>

      <div class="nav col-3 col-md-auto mb-2 justify-content-center mb-md-0 text-end">
	      <ul class="menu">
	        <c:if test="${empty sid }">
		        <a href="${path1 }/member/loginForm.do" class="btn btn-outline-primary me-2">로그인</a>
		        <a href="${path1 }/member/agree.do" class="btn btn-primary">회원가입</a>
	        </c:if>
	        	
	        <c:if test="${not empty sid }"> 
	        	<a href="${path1 }/member/logout.do" class="btn btn-outline-primary me-2">로그아웃</a>
		        <a href="${path1 }/member/detail.do" class="btn btn-primary">회원정보</a>
	        </c:if>
	         <c:if test='${sid eq "admin"}'>
	         	<a href="${path1 }/member/list.do" class="btn btn-primary">admin</a>
	         </c:if>
	        </ul>
      </div>
    </header>
  </div>
