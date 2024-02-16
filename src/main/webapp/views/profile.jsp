<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Profile Page</title>


<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;500;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration: none;
	font-family: 'Ubuntu', sans-serif;
}

body {
	background-color: whitesmoke;
}

nav {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	padding: 20px;
	transition: all 0.4s ease;
}

nav.sticky {
	padding: 15px 20px;
	background: #4070f4;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}

nav .nav-content {
	height: 100%;
	max-width: 1200px;
	margin: auto;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

nav .logo a {
	font-weight: 50;
	font-size: 35px;
	color: black;
}

nav.sticky .logo a {
	color: #fff;
}

.nav-content .nav-links {
	display: flex;
}

.nav-content .nav-links li {
	list-style: none;
	margin: 0 8px;
}

.nav-links li a {
	text-decoration: none;
	color: #0E2431;
	font-size: 18px;
	font-weight: 500;
	padding: 10px 4px;
	transition: all 0.3s ease;
}

.nav-links li a:hover {
	border: 3px solid black;
	background-color: black;
	border-radius: 25px;
	color: #f1f1f1;
}

nav.sticky .nav-links li a {
	color: #fff;
	transition: all 0.4s ease;
}

nav.sticky .nav-links li a:hover {
	color: #0E2431;
}

.home {
	height: 100vh;
	width: 100%;
	background:
		url("https://wallpapers.com/images/hd/bank-1920-x-1080-picture-kbau6h7onsbajier.jpg")
		no-repeat;
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	font-family: 'Ubuntu', sans-serif;
}

h2 {
	font-size: 30px;
	margin-bottom: 6px;
	color: black;
	text-align: center;
}

.text {
	text-align: justify;
	padding: 40px 80px;
	box-shadow: -5px 0 10px rgba(0, 0, 0, 0.1);
	background-color: #b7bed0;
}

@media only screen and (max-width: 1023px) {
	nav .logo a {
		font-weight: 500;
		font-size: 50px;
		color: black;
	}
	nav.sticky .logo a {
		color: #fff;
	}
	.nav-content .nav-links {
		display: flex;
	}
	.nav-content .nav-links li {
		list-style: none;
		margin: 0 8px;
	}
	.nav-links li a {
		text-decoration: none;
		color: #0E2431;
		font-size: 30px;
		font-weight: 500;
		padding: 10px 4px;
		transition: all 0.3s ease;
	}
	.home {
		height: 45vh;
		width: 100%;
		background: url("https://us.123rf.com/450wm/jemastock/jemastock1512/jemastock151201005/49341412-payment-concept-and-ecommerce-icons-design-vector-illustration-10-eps-graphic.jpg?ver=6") no-repeat;
		background-size: contain;
		background-attachment: fixed;
		font-family: 'Ubuntu', sans-serif;
	}
}

/* button*/
.card {
	display: inline-grid;
	flex-direction: unset;
	/* background: lightgrey; */
	margin: auto;
	padding: 30px;
}

.red-btn {
	width: 300px;
	height: 150px;
	margin: auto;
	background: rgb(255, 0, 0);
	background: rgb(131, 58, 180);
	background: linear-gradient(90deg, rgba(131, 58, 180, 1) 0%,
		rgba(253, 29, 29, 1) 50%, rgba(252, 176, 69, 1) 100%);
	color: white;
	border: none;
	border-radius: 0.625em;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
	position: relative;
	z-index: 1;
	overflow: hidden;
}

.blue-btn {
	width: 300px;
	height: 150px;
	margin: 15px;
	background: rgb(0, 8, 144);
	background: linear-gradient(90deg, rgba(0, 8, 144, 1) 0%,
		rgba(16, 0, 255, 1) 22%, rgba(86, 255, 247, 1) 100%);
	color: white;
	border: none;
	border-radius: 0.625em;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
	z-index: 1;
	overflow: hidden;
	position: relative;
}

button:hover {
	color: rgb(0, 0, 0);
}

button:after {
	content: "";
	background: white;
	position: absolute;
	z-index: -1;
	left: -20%;
	right: -20%;
	top: 0;
	bottom: 0;
	transform: skewX(-45deg) scale(0, 1);
	transition: all 0.5s;
}

button:hover:after {
	transform: skewX(-45deg) scale(1, 1);
	-webkit-transition: all 0.5s;
	transition: all 0.5s;
}

@media only screen and (max-width: 1023px) {
	nav {
		/* position: absolute; */
		top: 0;
		left: 0;
		width: 100%;
		padding: 20px;
		transition: all 0.1s ease;
	}
	.blue-btn {
		width: 900px;
		margin-left: -70px;
	}
	.red-btn {
		width: 900px;
		margin-left: -70px;
	}
	h2 {
		font-size: 50px;
		margin-bottom: 6px;
		color: black;
		text-align: center;
	}
}
 /* Styles for the pop-up window */
  .popup-window {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #406E95;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    z-index: 9999;
    color: rgb(40, 41, 46);
    text-align: justify;
  }
  .popup-window li{
padding: 1%;
  }
  
  .popup-window button {
    background-color: black;
    color: wheat;
    width: 40%;
    justify-content: center;
    height: 51px;
    margin-left: 28%;
    cursor: pointer;
}
.action{
    cursor: pointer;
}

/* Login */
.login-popup {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: #ffffff;
  background-color: rgba(0,0,0,0.4);
}

.login-popup-content {
  margin: 10% auto;
  padding: 0px 4px 9px 20px;
  /* border: 1px solid rgb(136, 136, 136); */
  width: 26%;
}

.close {
  color: black;
  float: right;
  font-size: 34px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.form-box {
  max-width: 300px;
  background: #f1f7fe;
  overflow: hidden;
  border-radius: 16px;
  color: #010101;

}

.form {
  position: relative;
  display: flex;
  flex-direction: column;
  padding: 32px 24px 24px;
  gap: 16px;
  text-align: center;
}

/*Form text*/
.title {
  font-weight: bold;
  font-size: 1.6rem;
}

.subtitle {
  font-size: 1rem;
  color: #666;
}

/*Inputs box*/
.form-container {
  overflow: hidden;
  border-radius: 8px;
  background-color: #fff;
  margin: 1rem 0 .5rem;
  width: 100%;
}

.input {
  background: none;
  border: 0;
  outline: 0;
  height: 40px;
  width: 100%;
  border-bottom: 1px solid #222020;
  font-size: .9rem;
  padding: 8px 15px;
}

.form-section {
  padding: 16px;
  font-size: .85rem;
  background-color: #e0ecfb;
  box-shadow: rgb(0 0 0 / 8%) 0 -1px;
}

.form-section a {
  font-weight: bold;
  color: #0066ff;
  transition: color .3s ease;
}

.form-section a:hover {
  color: #005ce6;
  text-decoration: underline;
}

/*Button*/
.form button {
  background-color: #0066ff;
  color: #fff;
  border: 0;
  border-radius: 24px;
  padding: 10px 16px;
  font-size: 1rem;
  font-weight: 600;
  cursor: pointer;
  transition: background-color .3s ease;
}

.form button:hover {
  background-color: #005ce6;
}

@media only screen and (max-width: 1023px) {

  .login-popup {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    /* width: 90%; */
    /* height: 65%; */
    overflow: auto;
    background-color: #ffffff;
    background-color: rgba(0,0,0,0.4);
  }
  
  .login-popup-content {
    padding-top: 45%;
    margin-right: 10px;
    /* border: 1px solid rgb(136, 136, 136); */
    width: 90%;
  }
  
  .close {
    color: white;
    /* color: black; */
    float: right;
    font-size: 45px;
    font-weight: bold;
    margin-right: 45px;
}

 
}

</style>
</head>
<body>
	<nav>
		<div class="nav-content">
			<div class="logo">
				<a href="#">MyBank</a>
			</div>
			<ul class="nav-links">
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Logout</a></li>
				<li><a href="#">Contact-Us</a></li>
			</ul>
		</div>
	</nav>
	<section class="home"></section>
	<%
		String email = (String) request.getAttribute("email");
	%>
	<div class="text">
		<p>
		<h2>--------------All Services--------------</h2>
		<div class="service">
			<form name="myForm">
				<input name="email" type="hidden" value="<%=email%>">
				<div class="card">
					<button class="red-btn" onclick="showInfo()">Show
						Information</button>

					<button class="blue-btn" onclick="showBal()" >Show Balance</button>
				</div>

				<div class="card">
					<button class="red-btn"  id="login-link" > Credit Money</button>

					<button class="blue-btn" id="login-link2" >Withdrow Money</button>
				</div>


				<div class="card">
					<button class="red-btn">Apply For Loan</button>

					<div class="bl">
						<button class="blue-btn"  onclick="deleteAc()">Delete Account</button>
					</div>
				</div>
			</form>
			
			<div id="login-popup" class="login-popup">
    <div class="login-popup-content">
      <span class="close" onclick="closeLoginPopup()">&times;</span>
      <div class="form-box">
        <form class="form" action="credit" >
          <span class="title">Credit Money</span>
          <div class="form-container">
            <input type="hidden" class="input" name="email" value="<%=email%>">
            <input type="number" class="input" name="ammount" placeholder="Enter a Ammount">
          </div>
          <button>Credit</button>
        </form>
        
      </div>
    </div>
    </div>
		
			<div id="login-popup2" class="login-popup">
    <div class="login-popup-content">
      <span class="close" onclick="closeLoginPopup2()">&times;</span>
      <div class="form-box">
        <form class="form" action="debit" >
          <span class="title">Debit Money</span>
          <div class="form-container">
            <input type="hidden" class="input" name="email" value="<%=email%>">
            <input type="number" class="input" name="ammount" placeholder="Enter a Ammount">
          </div>
          <button>Debit</button>
        </form>
        
      </div>
    </div>
    </div>

		</div>
	</div>
	


	<script type="text/javascript">
		

		function showInfo() {
			document.myForm.action = "show";
			document.myForm.submit();
		}

		function showBal() {
			document.myForm.action = "balance";
			document.myForm.submit();
		}

		function deleteAc() {
			
			document.myForm.action = "delete";
			document.myForm.submit();
		}
		 /* PopUp */

		  // Function to toggle the visibility of the pop-up window
		  function togglePopup() {
		      var popup = document.getElementById("popupWindow");
		      if (popup.style.display === "none") {
		        popup.style.display = "block";
		      } else {
		        popup.style.display = "none";
		      }
		    }

		    // Function to close the pop-up window
		    function closePopup() {
		      document.getElementById("popupWindow").style.display = "none";
		    }

		  //   FD

		  function togglePopupp() {
		      var popup = document.getElementById("popupWindoww");
		      if (popup.style.display === "none") {
		        popup.style.display = "block";
		      } else {
		        popup.style.display = "none";
		      }
		    }

		    // Function to close the pop-up window
		    function closePopupp() {
		      document.getElementById("popupWindoww").style.display = "none";
		    }
		    // Login
		    document.getElementById("login-link").addEventListener("click", function(event) {
		      event.preventDefault();
		      document.getElementById("login-popup").style.display = "block";
		    });

		    function closeLoginPopup() {
		      document.getElementById("login-popup").style.display = "none";
		    }

		    // Second
		    
		    function togglePopup2() {
		      var popup = document.getElementById("popupWindow2");
		      if (popup.style.display === "none") {
		        popup.style.display = "block";
		      } else {
		        popup.style.display = "none";
		      }
		    }

		    // Function to close the pop-up window
		    function closePopup2() {
		      document.getElementById("popupWindow2").style.display = "none";
		    }

		  //   FD

		  function togglePopupp2() {
		      var popup = document.getElementById("popupWindoww2");
		      if (popup.style.display === "none") {
		        popup.style.display = "block";
		      } else {
		        popup.style.display = "none";
		      }
		    }

		    // Function to close the pop-up window
		    function closePopupp() {
		      document.getElementById("popupWindoww2").style.display = "none";
		    }
		    // Login
		    document.getElementById("login-link2").addEventListener("click", function(event) {
		      event.preventDefault();
		      document.getElementById("login-popup2").style.display = "block";
		    });

		    function closeLoginPopup2() {
		      document.getElementById("login-popup2").style.display = "none";
		    }

		   
	</script>




</body>
</html>