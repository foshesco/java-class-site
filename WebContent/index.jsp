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

	<button class="tablink" onclick="openCategory('Home', this, 'red')"
		id="defaultOpen">home</button>
	<a href="age.jsp"><button class="tablink"
			onclick="openCategory('Age', this, 'green')">age database</button></a>
	<a href="branch.jsp"><button class="tablink"
			onclick="openCategory('Branch', this, 'blue')">branch database</button></a>
	<a href="pics.jsp"><button class="tablink"
			onclick="openCategory('Picture', this, 'orange')">picture database</button></a>

	<div align="center">
		<h1><b>  </b></h1>
			<br>
			
					<h2><b> How Would You Like to Search? </b></h2>
		<br> 
		<br> 
		<br> 
		<br>
	</div>
	<script src="scripts.js"></script>
</body>
</html>