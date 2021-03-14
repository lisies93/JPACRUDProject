<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>update game</title>
<!-- Required meta tags -->
<meta charset="utf-8">
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
	<h2>Edit Game</h2>
	<br>
	<div class="create-form">
		<c:choose>
			<c:when test="${game == null}">
				<h3>No Game Was Found With Id Number: ${idNum}.</h3>
			</c:when>
			<c:otherwise>
				<h2>Enter Game Information Here!</h2>
				<br>
				<form action="UpdateGame.do" method="POST">

					<div class="form-group">
						<!-- text -->
						<input type="hidden" name="id" value="${game.id}" required />
					</div>

					<div class="form-group">
						<!-- text -->
						<label for="name">Name</label> <input class="customInputText"
							id="name" type="text" name="name" value="${game.name}"
							size="15" placeholder="Name" required />
					</div>
					
					<div class="form-group">
						<!-- text -->
						<label for="description">Description </label> <br>
						<textarea class="customInputText" id="description" name="description" rows="5" cols="10" placeholder="Description" value="${game.description}" maxlength="1000" >
                         ${game.description}
                        </textarea>
					</div>
					
					<div class="form-group">
						<!-- text -->
						<label for="genre">Genre</label> <input class="customInputText"
							id="genre" type="text" name="genre" value="${game.genre}"
							size="15" placeholder="Genre" required />
					</div>
					
					<div class="form-group">
						<!-- text -->
						<label for="publisher">Publisher</label> <input class="customInputText"
							id="publisher" type="text" name="publisher" value="${game.publisher}"
							size="15" placeholder="Publisher" required />
					</div>
					
					<div class="form-group">
						<!-- text -->
						<label for="originalPlatform">Original Platform</label> <input class="customInputText"
							id="originalPlatform" type="text" name="originalPlatform" value="${game.originalPlatform}"
							size="15" placeholder="Original Platform" required />
					</div>

					<div class="form-group">
						<!-- drop down -->
						<label for="releasedYear">Released Year</label>
						<fmt:parseNumber var="year" type="number"
							value="${game.releasedYear}" />
						<input type="Number" id="releasedYear" name="releasedYear"
							value="${year}" min="1920" max="2021" size="6" placeholder="Year"
							required />
					</div>
					
					<div class="form-group">
						<!-- text -->
						<label for="image">Image URL</label> <input class="customInputText"
							id="image" type="text" name="image" value="${game.image}"
							size="15" placeholder="Image"  />
					</div>

					<br>
					<hr>
					<br>
					
                    <div  class="buttonDU">
					<button type="submit" class="nes-btn is-primary">Update</button>
					</div>
				</form>

			</c:otherwise>
		</c:choose>
	</div>
	</div>
	<div class="footer">

	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>