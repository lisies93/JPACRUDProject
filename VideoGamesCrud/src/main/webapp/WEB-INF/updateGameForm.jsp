<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<title>Update A Game</title>

</head>

<body>


	<h2>Edit Game</h2>
	<br>
	<div class="create-form">
		<c:choose>
			<c:when test="${game == null}">
				<h3>No Game Was Found With Id Number: ${idNum}.</h3>
			</c:when>
			<c:otherwise>
				<h2>Enter Game Information Here!</h2>
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

					<br>
					<hr>
					<br>

					<button type="submit" class="niceButton">Update</button>
				</form>

			</c:otherwise>
		</c:choose>
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