<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${game.name}</title>
</head>
<body>


	<c:choose>

		<c:when test="${empty game}">
			<h3>No Game Was Found With Id Number: ${idNum}.</h3>
		</c:when>

		<c:otherwise>
			<table>
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Genre</th>
						<th>Publisher</th>
						<th>Original Platform</th>
						<th>Released Year</th>

					</tr>
				</thead>
				<tbody>


					<tr>

						<td>${game.id}</td>
						<td>${game.name}</td>
						<td>${game.genre}</td>
						<td>${game.publisher}</td>
						<td>${game.originalPlatform}</td>
						<td>${game.releasedYear}</td>

					</tr>

				</tbody>
			</table>

			
			<form action="EditGame.do" method="GET">
				<input type="hidden" name="id" value="${game.id}"/> 
				<input type="submit" value="Update" />
			</form>
			<form action="DeleteGame.do" method="GET">
				<input type="hidden" name="id" value="${game.id}"/> 
				<input type="submit" value="Delete" onclick="return confirm('Are you sure? This CANNOT be undone.'); "/>
			</form>


		</c:otherwise>


	</c:choose>




</body>
</html>