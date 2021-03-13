<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${game.name}</title>
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

		<h1 id="title1">Best Retro Games of all time!</h1>

	</div>

	<div class="headerPicture">

		<img alt="Retro Games"
			src="https://wallpaperaccess.com/full/2717802.png">


	</div>
		<div class="home">

		<a href="home.do" > <h2>HOME</h2> </a>

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

		<c:when test="${empty game}">
			<h3>No Game Was Found With Id Number: ${idNum}.</h3>
		</c:when>

		<c:otherwise>
			
  <h1>${game.name} (${game.releasedYear})</h1>
  <br>
  <br>
  <h3>Genre</h3>
  <p>${game.genre}</p>
  <br>
  <br>
  <h3>Publisher</h3>
  <p>${game.publisher}</p>
  <br>
  <br>
  <h3>Original Platform</h3>
  <p>${game.originalPlatform}</p>
  <br>
  <br>

  


			<div class="buttonDU">
			<form action="EditGame.do" method="GET">
				<input type="hidden" name="id" value="${game.id}"/> 
				<input type="submit" value="Update" class="nes-btn is-primary" />
			</form>
			<form action="DeleteGame.do" method="GET">
				<input type="hidden" name="id" value="${game.id}"/> 
				<input type="submit" value="Delete" onclick="return confirm('Are you sure? This CANNOT be undone.'); " class="nes-btn is-warning"/>
			</form>
</div>

		</c:otherwise>


	</c:choose>
</div>
<div class="footer">

	</div>


</body>
</html>