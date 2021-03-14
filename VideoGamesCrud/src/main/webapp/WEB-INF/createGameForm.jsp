<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Create a Game</title>
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

		<a href="home.do"> <h2>HOME</h2> </a>

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
<div class="create-form">
<h2>Enter Game Information Here!</h2>
<br>
	<form action="MakeGame.do" method="POST">
	
		<div class="form-group">
		<!-- text -->
		<label for="name">Name</label>
		<input class="customInputText" id="name" type="text" name="name" value="" size="15" placeholder="Name" required/> 
		</div>
		
		<div class="form-group">
		<!-- text -->
		<label for="description">Description</label> <br>
		<textarea class="customInputText" id="description" name="description" rows="5" cols="10" placeholder="Description" maxlength="1000" >
       </textarea>
		</div>
		
		<div class="form-group">
		<!-- text -->
		<label for="genre">Genre</label>
		<input class="customInputText" id="genre" type="text" name="genre" value="" size="15" placeholder="Genre" required/> 
		</div>
		
		<div class="form-group">
		<!-- text -->
		<label for="publisher">Publisher</label>
		<input class="customInputText" id="publisher" type="text" name="publisher" value="" size="15" placeholder="Publisher" required/> 
		</div>
		
		<div class="form-group">
		<!-- text -->
		<label for="originalPlatform">Original Platform</label>
		<input class="customInputText" id="originalPlatform" type="text" name="originalPlatform" value="" size="15" placeholder="Original Platform" required/> 
		</div>
		
		<div class="form-group">
		<!-- drop down -->
		<label for="releasedYear">Released Year</label>
		<input type="Number" name="releasedYear" id="releasedYear" min="1920" max="2021" size="6" placeholder="Year" required/> 
		</div>
		
		<div class="form-group">
		<!-- drop down -->
		<label for="image">Image URL</label>
	    <input class="customInputText" id="image" type="text" name="image" value="" size="15" placeholder="image" /> 
		</div>
		<br>
		<hr>
		<br>
		
		<div  class="buttonDU">
		<button type="submit" class="nes-btn is-primary">Create</button>
		</div>	
	</form>

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