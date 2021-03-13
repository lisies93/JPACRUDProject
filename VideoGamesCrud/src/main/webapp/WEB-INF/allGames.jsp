<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best retro games list</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

</head>
<body>

	
	<h3>Games</h3>
	<table class="table table-striped table-hover">
		<thead class="table-dark">
			<tr>
				<th>ID</th>
				<th>Name</th>
			</tr>

		</thead>

		<tbody>

		</tbody>
		<c:forEach var="games" items="${games}">

			<tr>
				<td>${games.id}</td>
				<td><a href="getGame.do?id=${games.id}">${games.name}</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>

</body>
</html>