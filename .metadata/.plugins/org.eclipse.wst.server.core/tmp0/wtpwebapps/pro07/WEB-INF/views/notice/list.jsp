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
</head>
<body>
	<h2>공지사항 목록 </h2>
		<table>
			<thead>
				<tr>
					<th>No</th>
					<th>Title</th>
					<th>regdate</th>
					<th>visited</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${noticeList }" var="notice" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td><a href="${path1 }/notice/detail?tno=${notice.tno}">${notice.title }</a></td>
					<td>${notice.regdate }</td>
					<td>${notice.visited }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
</body>
</html>