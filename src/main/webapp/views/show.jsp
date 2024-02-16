<%@page import="com.bank.model.Account"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<style>
* {
	margin: 0px;
	padding: 0px;
}

.ma {
	display: flex;
	flex-direction: inherit;
}

.cot {
	width: 40%;
	height: 100vh;
	background-color: #d9dadd;
	text-align: center;
}

.contain {
	width: 60%;
	height: 100vh;
	background-image:
		url("https://img.freepik.com/free-photo/handsome-stylish-entrepreneur-pointing-laptop-display_176420-17906.jpg");
	background-size: cover;
	background-attachment: local;
}

.main {
	margin: auto;
	padding: auto;
	justify-content: center;
	margin: 30vh 8vw;
	text-align: left;
}

.main h2 {
	display: list-item;
	padding-bottom: 1%
}

.button {
	all: unset;
	display: flex;
	align-items: center;
	position: relative;
	padding: 0.6em 2em;
	border: #495d78 solid 0.15em;
	border-radius: 0.25em;
	color: #546784;
	font-size: 1.5em;
	font-weight: 600;
	cursor: pointer;
	overflow: hidden;
	transition: border 300ms, color 300ms;
	user-select: none;
}

.button p {
	z-index: 1;
}

.button:hover {
	color: #212121;
}

.button:active {
	border-color: rgb(0, 0, 0);
}

.button::after, .button::before {
	content: "";
	position: absolute;
	width: 9em;
	aspect-ratio: 1;
	background: #8198af;
	opacity: 50%;
	border-radius: 50%;
	transition: transform 500ms, background 300ms;
}

.button::before {
	left: 0;
	transform: translateX(-8em);
}

.button::after {
	right: 0;
	transform: translateX(8em);
}

.button:hover:before {
	transform: translateX(-1em);
}

.button:hover:after {
	transform: translateX(1em);
}

.button:active:before, .button:active:after {
	background: teal;
}

@media only screen and (max-width: 1023px) {

.cot{
width :99vw;
background-color : white;
 margin-left : 30px;
    margin-top: -57px;
}
.contain{
width: 1px
}

}

</style>
<body>
	<div class="ma">
		<%
			Account ac = (Account) request.getAttribute("ac");
		%>
		<div class="cot">
			<div class="main">

				<h2>
					Account No :
					<%=ac.getAc()%>
				</h2>
				<h2>
					Name :
					<%=ac.getName()%>
				</h2>
				<h2>
					DOB :
					<%=ac.getDob()%>
				</h2>
				<h2>
					Address :
					<%=ac.getAddress()%>
				</h2>
				<h2>
					City :
					<%=ac.getCity()%>
				</h2>
				<h2>
					Email :
					<%=ac.getEmail()%>
				</h2>
				<h2>
					Mobile :
					<%=ac.getNumber()%>
				</h2>
				<h2>
					AC Type :
					<%=ac.getType()%>
				</h2>
				<form name="myForm"></form>
				<button id="backButton" class="button">
					<p>Profile</p>
				</button>
			</div>
		</div>
		<div class="contain"></div>
	</div>
	<script type="text/javascript">
	document.getElementById('backButton').addEventListener('click', function() {
	    window.history.back();
	  });
	</script>
</body>
</html>