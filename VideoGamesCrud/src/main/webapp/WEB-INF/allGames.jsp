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

<link href="https://fonts.googleapis.com/css?family=Press+Start+2P"
	rel="stylesheet">
<link href="https://unpkg.com/nes.css/css/nes.css" rel="stylesheet" />

<link rel="stylesheet" href="resources/main.css" type="text/css">
</head>
<body>


	<div class="titleHeader">

		<h1 id="title1">BEST RETRO GAMES OF ALL TIME!</h1>

	</div>

	<div class="headerPicture">

		<img alt="Retro Games"
			src="https://wallpaperaccess.com/full/2717802.png">


	</div>

	<div class="home">

		<a href="home.do"> <h2> HOME </h2> </a>

	</div>

	<div class="pacmanBody">
		<div class="pagination">
			<input id="dot-1" type="radio" name="dots"> <label
				for="dot-1"></label> <input id="dot-2" type="radio" name="dots">
			<label for="dot-2"></label> <input id="dot-3" type="radio"
				name="dots" checked="checked"> <label for="dot-3"></label> <input
				id="dot-4" type="radio" name="dots"> <label for="dot-4"></label>
			<input id="dot-5" type="radio" name="dots"> <label
				for="dot-5"></label> <input id="dot-6" type="radio" name="dots">
			<label for="dot-6"></label> <input id="dot-7" type="radio"
				name="dots"> <label for="dot-7"></label> <input id="dot-8"
				type="radio" name="dots"> <label for="dot-8"></label>
			<div class="pacman"></div>
		</div>
	</div>
	<div class="center">
	<c:choose>

		<c:when test="${empty games}">
			<h3>No games were found with keyword "${key}".</h3>
		</c:when>

		<c:otherwise>

	
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
	</c:otherwise>
	</c:choose>
	
	</div>
	<div class="footer">

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
   
</body>
</html>