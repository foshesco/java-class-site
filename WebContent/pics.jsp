<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="main.css" rel="stylesheet" type="text/css">
</head>
<body>

<title>Blue Falcons</title>
</head>
<body>

	<div id="Home" class="tabcontent">
		<h3>Chicago's Java Class
			Database</h3>
		<a> home. </a>
	</div>

	<div id="Age" class="tabcontent">
		<h3>Chicago's Java Class
			Database</h3>
		<a>age database.</a>
	</div>

	<div id="Branch" class="tabcontent">
		<h3>Chicago's Java Class
			Database</h3>
		<a>branch database.</a>
	</div>

	<div id="Picture" class="tabcontent">
		<h3>Chicago's Java Class
			Database</h3>
		<a>picture database.</a>
	</div>

	<a href="index.jsp"><button class="tablink" onclick="openCategory('Home', this, 'red')"
		>home</button></a>
	<a href="age.jsp"><button class="tablink"
			onclick="openCategory('Age', this, 'green')">age database</button></a>
	<a href="branch.jsp"><button class="tablink"
			onclick="openCategory('Branch', this, 'blue')">branch database</button></a>
	<button class="tablink"
			onclick="openCategory('Picture', this, 'orange')"id="defaultOpen">picture database</button>
			
	<div align="center">
		
		<br> <br> <br>


		<form action="ChicagoServlet" method="get">

			<table border="1">
				<tr>
					<td><img src="pics/erik.jpg" width="150" height="150"
						alt="erik" name="erik">
					<td><img src="pics/tydell.jpg" width="150" height="150"
						alt="tydell" name="tydell">
					<td><img src="pics/edsel.jpg" width="150" height="150"
						alt="edsel" name="edsel">
					<td><img src="pics/tom.jpg" width="150" height="150" alt="tom"
						name="tom">
				</tr>
				<tr align="center">
					<td><input type="radio" name="pic" value="Erik">
					<td><input type="radio" name="pic" value="Tydell">
					<td><input type="radio" name="pic" value="Edsel">
					<td><input type="radio" name="pic" value="Tom">
				</tr>
				<tr align="center">
					<td><img src="pics/met.jpg" width="150" height="150" alt="met"
						name="met">
					<td><img src="pics/ali.jpg" width="150" height="150" alt="ali"
						name="ali">
					<td><img src="pics/miggy.jpg" width="150" height="150"
						alt="erik" name="miggy">
					<td><img src="pics/mark.jpg" width="150" height="150"
						alt="mark" name="mark">
				</tr>
				<tr align="center">
					<td><input type="radio" name="pic" value="Met">
					<td><input type="radio" name="pic" value="Ali">
					<td><input type="radio" name="pic" value="Miguel">
					<td><input type="radio" name="pic" value="Mark">
				</tr>
			</table>
			<br> <input type="submit" width="100" value="Press to Continue">
		</form>
	</div>

<script src="scripts.js"></script>
</body>
</html>