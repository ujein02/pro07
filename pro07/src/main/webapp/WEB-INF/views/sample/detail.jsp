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
<title>샘플 상세보기</title>
</head>
<body>
	<h2> 샘플 상세보기 </h2>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${sample.id }</td>
					<td>${sample.pw }</td>
				</tr>
			</tbody>
		</table>
</body>
</html>