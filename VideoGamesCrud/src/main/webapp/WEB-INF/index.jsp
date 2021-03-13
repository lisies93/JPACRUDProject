<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Retro Video Games</title>
</head>
<body>

    <h3>Look up game by Id #</h3>
	<form action="getGame.do" method="GET">
		<input type="number" name="id" value="" size="4" required/>
    <br>
    <input type="submit" value="Search" />
	</form>


	<h3>Look up game by keyword</h3>
	<form action="getGame.do" method="GET">
		<input class="customInputText" type="text" name="keyword" value="" size="4" />
    <br>
    <input type="submit" value="Search" />
	</form>


	<h3>Edit a Game</h3>

	<form action="EditGame.do" method="GET">
    		<label for="number" >Game ID #: </label>
		<input type="number" class="customInputNumbers" min="1" max="2000" name="id" value="" size="4" id="number" required />

    <br>
		<input type="submit" value="Update" />
	</form>


  <h3>Add a new game</h3>

	<form action="GetForm.do" method="GET">
		<input type="submit" value="Add Game" />
	</form>

</body>
</html>