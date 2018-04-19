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
	<button class="tablink"
			onclick="openCategory('Branch', this, 'blue')"id="defaultOpen">branch database</button>
	<a href="pics.jsp"><button class="tablink"
			onclick="openCategory('Picture', this, 'orange')">picture database</button></a>
	<div align="center">

		
		<br> <br> <br> <br> <br>


		<form action="ChicagoServlet" method="get">
			<br>
			<table>
				<tr>
					<td>Army <input type="radio" name="branch" value="Army">
					<td>Marines <input type="radio" name="branch" value="Marines">
					<td>Navy <input type="radio" name="branch" value="Navy">
				</tr>
			</table>
			<br> <input type="submit" width="100" value="Press to Continue">
		</form>
	</div>

<script src="scripts.js"></script>
</body>
</html>