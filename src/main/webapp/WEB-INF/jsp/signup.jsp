<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: sans-serif;
	background-color: rgb(11, 186, 239);
}

.errors {
	color: red;
	display: block;
	position: relative;
	text-align: center;
	margin-bottom: 10px;
	font-size: 10px;
}

ul {
	text-align: right;
	border-bottom: 1px solid white;
	position: fixed;
	width: 100%;
	height: 30px;
	list-style-type: none;
	margin: 0;
	padding-top: 5px;
	display: inline;
	padding-bottom: 50px;
	padding-left: 20px;
	box-shadow: 0px 7px 10px #ece9e9;
}

ul li {
	margin-top: 20px;
	margin-right: 15px;
	display: inline;
	text-decoration: none;
	float: right;
}

a {
	margin-right: 2px;
	text-decoration: none;
	font-weight: bold;
	color: white;
}

a:hover {
	color: rgba(0, 100, 250, 0.3)
}

/* .col {
    float: left;
    width:%;
  } */
.header {
	width: 100%;
	height: 10px;
	overflow: hidden;
	margin-bottom: 20px;
}

.links {
	position: relative;
	margin-right: 200px;
}

form {
	background-color: rgb(11, 206, 240);
	height: 380px;
	width: 400px;
	margin-top: 10%;
	margin-left: 600px;
	border: 1px solid white;
	border-radius: 5px;
	border: 1px solid rgba(252, 252, 252, 0.4);
}

p {
	font-family: 'Padauk', sans-serif;
	font-size: 11px;
}

.col {
	margin-left: 30px;
}

h3 {
	text-align: center;
}

input {
	border: 1px solid rgba(252, 252, 252, 0.4);
	background-color: rgba(252, 252, 252, 0.2);
	padding-top: 7px;
	width: 101px;
	border-radius: 2px;
	font-family: "Source Sans Pro", sans-serif;
	color: white;
	margin-right: 10px;
	margin-top: 15px;
	margin-bottom: 8px;
}

select {
	background-color: rgba(252, 252, 252, 0.2);
	border: 1px solid rgba(252, 252, 252, 0.4);
	color: gray;
}

select option::after {
	color: white;
}

button {
	margin-top: 10px;
	border: none;
	background-color: rgba(250, 250, 250, 0.4);
	border-radius: 6px;
	padding-bottom: 5px;
	font-weight: 800px;
}

button:hover {
	background-color: aqua;
	opacity: 60%;
}

h5 {
	color: rgba(250, 250, 250, 0.4);
}

header {
	width: 100%;
	margin-right: 5px;
	padding-left: 15px;
	border-bottom: 1px solid rgba(250, 250, 250, 0.4);
}

select {
	padding-top: 7px;
}

td {
	border: 1px solid rgba(250, 250, 250, 0.4);
}

.button-container {
	margin-top: 60px;
}
</style>
<body>
	<header class="header"></header>
	<c:forEach items="${errors}" var="error">
		<p style="color: red">${error}</p>
	</c:forEach>
	<div class="row">
		<div class="col">
			<input class="inputs" id="fname" autcomplete="off" autofill="off"
				pattern="[A-Za-z]{1,25}" placeholder="Enter FirstName"></input> <input
				class="inputs" autcomplete="off" autofill="off" id="lname"
				pattern="[A-Za-z]{1,25}" placeholder="Enter Last Name"></input> <input
				autocomplete="off" autofill="off" class="inputs" id="city"
				pattern="[A-Za-z]{1,25}" placeholder="Enter City"></input>
		</div>
		<div class="col">
			<input autocomplete="off" autofill="off" class="inputs" id="age"
				pattern="[0-9][1,3]" placeholder="Enter Age"></input> <input
				autcomplete="off" autofill="off" class="inputs" id="zipcode"
				pattern="[0-9]{1,7}" placeholder="Zip Code"></input>
		</div>
	</div>
	<form name="form" action="/createuser" method="post">

		<input name="firstName" placeholder="Enter First Name" /> <input
			name="lastName" placeholder="Enter Last Name" /> <input name="email"
			placeholder="Enter Email" /> <input name="password"
			placeholder="Enter password" /> <input name="confirmPassword"
			placeholder="ReEnter Password" /> <select><option>Enter
				Role</option>
			<option>Coach</option>
			<option>Player</option>
		</select>

		<button type="submit">SUBMIT</button>
	</form>
</body>
</html>