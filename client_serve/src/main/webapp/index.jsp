<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Danh Sách Country</h1>
	<a href="insert.jsp">Thêm mới</a>
	<table border="1">
		<tr>
			<th>STT</th>
			<th>Name</th>
			<th>Position</th>
			<th>Area</th>
			<th>Population</th>

		</tr>
		<c:forEach items="${products}" var="p">
			<tr>
				<td>${p.CountryId}</td>
				<td>${p.CountryName}</td>
				<td>${p.Position}</td>
				<td>${p.Area}</td>
				<td>${p.Population}</td>
				<td><a
					href="DeleteProServlet?id=<fmt:formatNumber value="${p.CountryId}" minFractionDigits="0" maxFractionDigits="0"/>">Xóa</a></td>
			</tr>

		</c:forEach>


	</table>
</body>
</html>