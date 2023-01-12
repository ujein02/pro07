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
<link rel="shortcut icon" href="${path0}/resources/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${path0}/resources/css/normalize.css" />
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

.table{ border-spacing: 1px; border-color:#8f8f8f; text-align: center;margin-bottom: 5rem}
.tbody{border:1px solid #8f8f8f;}
.title { text-align: center;padding-top:36px; padding-bottom:70px; }
.agree_fr { width: 1000px; white-space:pre-wrap; margin: 10px auto; 
padding: 24px; border:3px solid #eee; height:600px; overflow-y:auto; }
.form-check{margin-left:200px; padding-top:20px;}
.form-label{width:100px;}
.section{height:auto; min-height:100%; padding-bottom:181px; margin-bottom: 40px;}

td a{color:#333;}
.nav-link dropdown-toggle {color:#333;}

.btn-group, .btn-toolbar{float:right;}

.mainVisual{position: relative; display:block; width:100%; height:70%; background-image:url("${path0}/resources/img/main.png"); background-color:white;
background-size:100% 90%; background-repeat:no-repeat; margin:0 auto; }

.mainVisual .catch{
    position: absolute;
    top: 20vh;
    left: 55%;
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

.sub_visual {
    position: relative;
    height: 130px;
    background: url("${path0}/resources/img/bg_sub_visual.jpg") no-repeat center center;
    text-align: center;
}
.lnb {
    position: relative;
    width: 188px;
    z-index: 9;
    padding: 80px 15px 30px;
    top: 70px;
    margin-left: 35px;
    border: solid 1px #eaeaea;
    border-top: 0px;
    float: left;
}

.lnb_tit_hidden {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 188px;
    height: 60px;
    background-color: #4f8ec3;
    text-align: center;
    top: 0px;
    padding-top:1.5vh;
   
}
.sub_nav {
    color: #475055;
    font-size: 12px;
    font-weight: 400;
    margin-top: 6px;
    padding-top:15px;
}
.sub_nav a span {
    display: inline-block;
    font-size: 13px;
    color: #475055;
    padding: 0 5px;
}
.lnb li.lnb_dep1 {
    padding: 17px 0;
    border-bottom: solid 1px #dedede;
    text-align: left;
}
.lnb li.lnb_dep1 a {
	text-decoration:none;
    font-size: 15px;
    color: #475055;
    font-weight: 400;
}
.lnb li.lnb_dep1.on a {
    text-decoration: underline;
}
.lnb li.lnb_dep2 {
    padding-top: 13px;
    text-indent: -10px;
    margin-left: 10px;
    border-bottom: solid 0px #dedede;
}
.lnb li.lnb_dep2 a {
	text-decoration:none;
    font-size: 13px;
    color: #76848b!important;
    padding-left: 10px;
}
.lnb li.lnb_dep2.on a {
    text-decoration: underline;
}

.sub_container {
    position: relative;
    width: 1000px;
    overflow: hidden;
    margin: 0 auto;
    padding-bottom: 60px;
    
}

.sub_nav span {
    display: inline-block;
    font-size: 13px;
    color: #dedede;
    padding: 0 5px;
}
.visual_wrap .sub_nav {
    color: #fff;
    font-size: 12px;
    font-weight: 400;
    margin-top: 5px;
}
.content_area {
    position: relative;
    width: 100%;
    float: left;
    margin-left: 45px;
    overflow: hidden;
    line-height: normal;
    margin-top:2vh;
    
}
.content_body {
    position: relative;
    width: 1000px;
    margin: 0;
    padding: 0;
}    
.message .message_txt01 {
    font-size: 30px;
    color: #373434;
    margin-bottom: 10px;
    font-weight: 400;
    line-height: 1.2em;
    padding-top:50px;
    
}

.message {
    position: relative;
    background: url("${path0}/resources/img/mini.png") right no-repeat ;
    overflow: hidden;
    margin-bottom: 5em;
    font-size: 18px;
    line-height: 1.7em;
}
    
.row{padding-bottom: 70px;}
.col{width:33.3%; height:520px;}
.carousel-item img{width:100%; height:520px;}

.bbs02_list {
    position: relative;
    overflow: hidden;
    width: 100%;
}
.bbs02_list ul li {
    float: left;
    margin: 0 21px 50px 0;
}
.bbs02_list .gallery_wrap {
    width: 281px;
    position: relative;
}
.bbs02_list .gallery_wrap a.gallery_img {
    width: 281px;
    height: 211px;
}

.bbs02_list .gallery_wrap a .icon_play {
    position: absolute;
    z-index: 999;
    top: 50%;
    left: 50%;
    width: 83px;
    height: 88px;
    margin: -80px 0 0 -35px;
    background: url("${path0}/resources/img/icon_play.png") no-repeat;
}
.gallery_img img{width:280px;}
.gallery_wrap{    -webkit-text-size-adjust: 100%;
    color: #333;
    font-size: 14px;
    font-weight: 400;
    font-family: "Noto Sans KR",sans-serif;
    letter-spacing: -1px;
    line-height: normal;
    list-style: none;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    width: 281px;
    position: relative;}

.bbs02_list .gallery_wrap aside p {
    display: inline-block;
    font-size: 12px;
    color: #6d6d6d;
    padding: 5px 8px 5px 5px;
        text-decoration: none;
    color: #555;
    float:right;
}
.bbs02_list .gallery_wrap a.gallery_txt {
    font-size: 14px;
    color: #333;
    padding: 10px 0 10px 5px;
    display: block;
    height: 60px;
    text-decoration: none;
}
#footer{   box-sizing: border-box;
    display: block;
    border-top: 1px solid #ddd;
    background-color: #fff;
    width:100%;
    height:181px;
    font-size: 14px;
    position : relative;
  	bottom:0;
    background: #f1f1f1;
    }

.foot_bottom {    letter-spacing: -1px;
	display: block;
    box-sizing: border-box;
    margin: 0;
    padding: 50px;
    padding-left:120px;
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
