<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Game</title>
</head>
<body>
	<c:choose>

		<c:when test="${not deleted}">
			<h3>The game was not deleted</h3>
		</c:when>

		<c:otherwise>


			<c:choose>

				<c:when test="${empty game}">
					<h3>The game does not exist</h3>
				</c:when>

				<c:otherwise>

					<h3>Game ${game.name} was successfully deleted.</h3>

				</c:otherwise>

			</c:choose>

		</c:otherwise>

	</c:choose>

</body>
</html>