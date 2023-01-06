<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path0" value="${pageContext.request.contextPath }" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/normalize.css" />
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<style>
body, html { font-family: 'Noto Sans KR', sans-serif; margin:0; padding:0;color: #333;
    line-height: 1.5;
    text-align: left;
    letter-spacing: -1px;}

ul { list-style:none; }
.small-12 cell > label{font-size:25px;}
#logo { display:block; width:100px; height:50px; background-image:url(""); background-color:white;
background-size:90% auto; background-repeat:no-repeat; background-position:center center;  z-index:91;}

.h1 { padding-top:0.9rem; padding-bottom:0.3rem; }
.container { clear:both; width:100%; height:auto; margin:0 auto; }
.container::after { content:""; display:block; width:100%; clear:both; }

#header{font-size:18px;}
#table th { border-bottom:1px solid #fff; }
.table{ border-spacing: 1px; border-color:#eee; text-align: center;margin-bottom: 5rem}

.title { text-align: center;padding-top:36px; padding-bottom:70px; }
.agree_fr { width: 1000px; white-space:pre-wrap; margin: 10px auto; 
padding: 24px; border:3px solid #eee; height:600px; overflow-y:auto; }
.form-check{margin-left:200px; padding-top:20px;}
.form-label{width:100px;}
.section{height:auto; min-height:100%; padding-bottom:181px; margin-bottom: 40px;}
td a{color:#333;}

.btn-group, .btn-toolbar{float:right;}

.mainVisual{position: relative; display:block; width:100vw; height:700px; background-image:url("${path0}/resources/img/main.png"); background-color:white;
background-size:100% auto; background-repeat:no-repeat; background-position:center center; margin:0 auto; }

.mainVisual .catch{
    position: absolute;
    top: 35vh;
    left: 50%;
    width: 100%;
    margin: 0 auto;
    color: #fff;
    font-size: 50px;
    font-weight: 900;
    line-height: 1.35;
    -webkit-transform: translateX(-50%);
    -ms-transform: translateX(-50%);
    transform: translateX(-50%);
    text-shadow: 3px 3px 2px #555;
    letter-spacing: -0.03em;
}
.catch p {    font-family: "Noto Sans KR",sans-serif;
    text-align: left;
    color: #fff;
    font-size: 4vw;
    font-weight: 900;
    line-height: 1.35;
    text-shadow: 3px 3px 2px #555;
    letter-spacing: -0.03em;
    box-sizing: border-box;
    margin: 0;
    padding: 0;}
    
.row{padding-top:20px; padding-bottom: 50px;}
.col{width:33.3%; height:520px;}
.carousel-item img{width:100%; height:520px;}
#footer{   box-sizing: border-box;
    display: block;
    border-top: 1px solid #ddd;
    background-color: #fff;
    width:100%;
    height:181px;
    font-size: 14px;
    position : relative;
  	transform : translateY(-100%);
    bottom:0;
    background: #f1f1f1;
    }

.foot_bottom {    letter-spacing: -1px;
	display: block;
    box-sizing: border-box;
    margin: 0;
    padding: 25px;
    background: #f1f1f1;
    }
.foot_logo  {
    float: left;
    width: 140px;
    height:181px;

}
.foot_bottom address {
    color: #555;
    font-size: 14px;
    font-weight: 400;
}
.foot_bottom p {
    color: #777;
    margin-top: 5px;
}
</style>
