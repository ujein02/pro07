<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path0" value="${pageContext.request.contextPath }" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="resources/css/normalize.css" />
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

<script>
  $(document).ready(function(){
	  $(document).foundation();
  });
</script>
<style>
body, html { font-family: 'Noto Sans KR', sans-serif; }
ul { list-style:none; }
.orbit-slide{height:600px;}
.orbit-container {height:600px;}
.small-12 cell > label{font-size:25px;}
#logo { display:block; width:100px; height:50px; background-image:url(""); background-color:white;
background-size:90% auto; background-repeat:no-repeat; background-position:center center;  z-index:91;}

#gnb > ul > li[role="menuitem"] { height:38px; }
#gnb > ul > li.menu-text[role="menuitem"] { padding-top:0px; padding-bottom:0px; }

.h1 { padding-top:0.9rem; padding-bottom:0.3rem; }
.container { clear:both; width:1200px; margin:0 auto; }
.container::after { content:""; display:block; width:100%; clear:both; }


#table1 th { border-bottom:1px solid #fff; }

#footer {height:100px;} 
.footer-content{height:20px;}
.footer-nav {	background-color:#2d2d2d; height:80px; box-sizing:border-box; overflow:hidden; }
.footer-nav > article { clear:both; width:1200px; margin:0px auto; height:80px; }
.footer-nav > article > div { float:left; }
.footer-nav-left { color:#fff; width:25%; line-height:px; }
.footer-nav-center {
	width:50%; color:#fff;  font-size:13px; padding-top:20px; 
}
.footer-nav-right {
	width:25%; 
}
#footer .footer-nav-left .footer-copyright {
	line-height:80px;
}

#footer > article > div > ul > li.footer-nav-item { 
	float:left; width:auto; padding:1.8rem;  
	min-width:40px;
}
#footer > article > div.footer-nav-right > ul > li.footer-nav-item {
	width:25%; height:25%;
}


</style>
