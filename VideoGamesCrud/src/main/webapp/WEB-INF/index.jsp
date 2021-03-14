<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Retro Video Games</title>

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
		<div class="nes-container with-title">
			<span class="title">Look up game by Id #</span>
			<form action="getGame.do" method="GET">
				<input type="number" name="id" value="" id="number" required /> <br>
				<input type="submit" value="Search" class="nes-btn is-primary" />
			</form>
		</div>
		<br> <br> <br>
		<div class="nes-container with-title">
			<span class="title">Look up game by keyword</span>
			<form action="getGame.do" method="GET">
				<input type="text" name="keyword" value="" /> <br> <input
					type="submit" value="Search" class="nes-btn is-primary" />
			</form>
		</div>
		<br> <br> <br>
		<div class="nes-container with-title">
			<span class="title">List All Games</span>
			<form action="getGame.do" method="GET">
				<input type="submit" value="Search" class="nes-btn is-primary" />
			</form>
		</div>
		<br> <br> <br>
		<div class="nes-container with-title">
			<span class="title">Update a game</span>
			<form action="EditGame.do" method="GET">
				<label for="number">Game ID #: </label> <input type="number" min="1"
					max="2000" name="id" value="" size="4" id="number" required /> <br>
				<input type="submit" value="Update" class="nes-btn is-primary" />
			</form>
		</div>
		<br> <br> <br>
		<div class="nes-container with-title">
			<span class="title">Add a new game</span>
			<form action="GetForm.do" method="GET">
				<input type="submit" value="Add Game" class="nes-btn is-primary" />
			</form>
		</div>
	</div>

	<div class="footer"></div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>
</html>