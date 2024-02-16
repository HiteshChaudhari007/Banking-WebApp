<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- ===== CSS ===== -->
  <!-- <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0" />
-->
  <title>My Bank</title>
  
  <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'> 
<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
    transition: all 0.4s ease;;
}


/* ===== Colours ===== */
:root{
  --body-color: #E2E7C0;
  --nav-color: #406E95;
  --side-nav: rgb(16 24 47);;
  --text-color: #FFF;
  --search-bar: #F2F2F2;
  --search-text: #010718;
}

body{
    background-color: var(--body-color);
}

body.dark{
    --body-color: #18191A;
    --nav-color: #242526;
    --side-nav: #242526;
    --text-color: #fdfdfd;
    --search-bar: #242526;
    background: #0f0e0e;
}

nav{
    position: fixed;
    top: 0;
    left: 0;
    height: 70px;
    width: 100%;
    background-color: var(--nav-color);
    z-index: 100;
}

body.dark nav{
    border: 1px solid #393838;

}

nav .nav-bar{
    position: relative;
    height: 100%;
    max-width: 1000px;
    width: 100%;
    background-color: var(--nav-color);
    margin: 0 auto;
    padding: 0 30px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

nav .nav-bar .sidebarOpen{
    color: var(--text-color);
    font-size: 25px;
    padding: 5px;
    cursor: pointer;
    display: none;
}

nav .nav-bar .logo a{
    font-size: 25px;
    font-weight: 500;
    color: var(--text-color);
    text-decoration: none;
}

.menu .logo-toggle{
    display: none;
}

.nav-bar .nav-links{
    display: flex;
    align-items: center;
}

.nav-bar .nav-links li{
    margin: 0 5px;
    list-style: none;
}

.nav-links li a{
    position: relative;
    font-size: 17px;
    font-weight: 400;
    color: var(--text-color);
    text-decoration: none;
    padding: 10px;
}

.nav-links li a::before{
    content: '';
    position: absolute;
    left: 50%;
    bottom: 0;
    transform: translateX(-50%);
    height: 6px;
    width: 6px;
    border-radius: 50%;
    background-color: var(--text-color);
    opacity: 0;
    transition: all 0.3s ease;
}

.nav-links li:hover a::before{
    opacity: 1;
}

.nav-bar .darkLight-searchBox{
    display: flex;
    align-items: center;
}

.darkLight-searchBox .dark-light,
.darkLight-searchBox .searchToggle{
    height: 40px;
    width: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 5px;
}

.dark-light i,
.searchToggle i{
    position: absolute;
    color: var(--text-color);
    font-size: 22px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.dark-light i.sun{
    opacity: 0;
    pointer-events: none;
}

.dark-light.active i.sun{
    opacity: 1;
    pointer-events: auto;
}

.dark-light.active i.moon{
    opacity: 0;
    pointer-events: none;
}

.searchToggle i.cancel{
    opacity: 0;
    pointer-events: none;
}

.searchToggle.active i.cancel{
    opacity: 1;
    pointer-events: auto;
}

.searchToggle.active i.search{
    opacity: 0;
    pointer-events: none;
}

.searchBox{
    position: relative;
}

.searchBox .search-field{
    position: absolute;
    bottom: -85px;
    right: 5px;
    height: 50px;
    width: 300px;
    display: flex;
    align-items: center;
    background-color: var(--nav-color);
    padding: 3px;
    border-radius: 6px;
    box-shadow: 0 5px 5px rgba(0, 0, 0, 0.1);
    opacity: 0;
    pointer-events: none;
    transition: all 0.3s ease;
}

.searchToggle.active ~ .search-field{
    bottom: -74px;
    opacity: 1;
    pointer-events: auto;
}

.search-field::before{
    content: '';
    position: absolute;
    right: 14px;
    top: -4px;
    height: 12px;
    width: 12px;
    background-color: var(--nav-color);
    transform: rotate(-45deg);
    z-index: -1;
}

.search-field input{
    height: 100%;
    width: 100%;
    padding: 0 45px 0 15px;
    outline: none;
    border: none;
    border-radius: 4px;
    font-size: 14px;
    font-weight: 400;
    color: var(--search-text);
    background-color: var(--search-bar);
}

body.dark .search-field input{
    color: var(--text-color);
}

.search-field i{
    position: absolute;
    color: var(--nav-color);
    right: 15px;
    font-size: 22px;
    cursor: pointer;
}

body.dark .search-field i{
    color: var(--text-color);
}

@media (max-width: 790px) {

    nav .nav-bar .sidebarOpen{
        display: block;
    }

    .menu{
        position: fixed;
        height: 100%;
        width: 320px;
        left: -100%;
        top: 0;
        padding: 20px;
        background-color: var(--side-nav);
        z-index: 100;
        transition: all 0.4s ease;
    }

    nav.active .menu{
        left: -0%;
    }

    nav.active .nav-bar .navLogo a{
        opacity: 0;
        transition: all 0.3s ease;
    }

    .menu .logo-toggle{
        display: block;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .logo-toggle .siderbarClose{
        color: var(--text-color);
        font-size: 24px;
        cursor: pointer;
    }

    .nav-bar .nav-links{
        flex-direction: column;
        padding-top: 30px;
        
        
    }

    .nav-links li a{
        display: block;
        font-size: x-large;
        text-align: center;
        width: 300px;
        margin-top: 20px;
        border-bottom: 5px groove #406E95;
        /* border-right: 5px groove #406E95; */
    }

}

  
  body {
    /* justify-content: center; */
    min-height: 100vh;
    background: #f1f4fd;
    /* flex-direction: column; */
  }
  
  .slider-container {
    position: relative;
    width: 100%;
  }
  
  .slider {
    display: flex;
    overflow: hidden;
  }
  
  .slide {
    width: 80%;
    height: 55vh;
    justify-content: center;
    margin-left: auto;
    /* padding: 12px; */
    margin-right: auto;
    margin-top: 70px;
}
  .dots-container {
    position: absolute;
    bottom: 10px;
    left: 50%;
    transform: translateX(-50%);
  }
  
  .dot {
    width: 10px;
    height: 10px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    margin: 0 5px;
    cursor: pointer;
  }
  
  .active {
    background-color: #333;
  }
  
  /* Styles for mobile and tablets */
  @media only screen and (max-width: 1023px) {
    .slide {
      width: 100%;
      height: 30vh;
      justify-content: center;
      margin-left: auto;
      /* padding: 12px; */
      margin-right: auto;
      margin-top: 15%;
      padding-bottom: 0px;
  }
  }

/* Card */

.block div {
    /* width: 30vw;
     */
     width: 48vw;
    height: 35vh;
    /* background-color: #000; */
    /* color: red; */
    display: inline-block;
    flex-direction: row;
    justify-content: center;
    text-align: center;
}

.pre img{
  width: 100%;
  height: 20%;
  margin-top:5% ;
}


/* Cartss */
.card {
    /* max-width: 300px; */
    border-radius: 0.9rem;
    background-color: #406E95;
    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
    border: 3px solid transparent;
    height: 20vh;
  }

  
  .card a {
    text-decoration: none
  }
  
  .content {
    padding: 1.1rem;
  }
  .block3{
    padding-left: 25%;
    padding-top: 20px;
    }
  @media only screen and (max-width: 1023px) {
  
  .block div{
    margin-top: 3%;
    width: 100vw;
    height: 29vh;
    /* background-color: #000; */
    /* color: red; */
    display: inline-block;
    flex-direction: row;
    justify-content: center;
    text-align: center;
  }
  .debit{
    width: 45vw;
  }
  .image img{
    object-fit: cover;
    width: 100%;
    height: 100%;
    /* background-color: rgb(239, 205, 255); */
  }
  .block3{
    padding-left: 0%;
    padding-top: 15px;
    }
  
.popup-window {
width: 80%;

}
}
.image img{
    object-fit: cover;
    width: 90%;
    height: 90%;
    /* background-color: rgb(239, 205, 255); */
    padding-top: 10px;
  }
  
  .title {
    color: #111827;
    font-size: 1.125rem;
    line-height: 1.75rem;
    font-weight: 600;
  }
  
  .desc {
    margin-top: 0.5rem;
    color: #6B7280;
    font-size: 0.875rem;
    line-height: 1.25rem;
  }
  
  .action {
    display: inline-flex;
    margin-top: 1rem;
    color: #ffffff;
    font-size: 0.875rem;
    line-height: 1.25rem;
    font-weight: 500;
    align-items: center;
    gap: 0.25rem;
    background-color: black;
    padding: 10px 35px;
    border-radius: 4px;
    margin-bottom: 50%;
  }
  
  .action span {
    transition: .3s ease;
  }
  
  .action:hover span {
    transform: translateX(4px);
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

/* Last One */
.card3 {
  padding: 20px;
  width: 320px;
  min-height: 370px;
  border-radius: 20px;
  background: #e8e8e8;
  box-shadow: 5px 5px 6px #dadada,
               -5px -5px 6px #f6f6f6;
  transition: 0.4s;
  height: 70vh;
  display: inline-block;
}

.card3:hover {
  translate: 0 -10px;
}

.card-title {
  font-size: 18px;
  font-weight: 600;
  color: #2e54a7;
  margin: 15px 0 0 10px;
}

.card-image {
  min-height: 170px;
  background-color: #c9c9c9;
  border-radius: 15px;
  box-shadow: inset 8px 8px 10px #c3c3c3,
            inset -8px -8px 10px #cfcfcf;
            

}
.card-image img{
  width: 100%;
  height: 100%;
}

.card-body {
  margin: 13px 0 0 10px;
  color: rgb(31, 31, 31);
  font-size: 15px;
  width: 90%;
}

.footer {
  float: right;
  margin: 28px 0 0 18px;
  font-size: 13px;
  color: #636363;
}

.by-name {
  font-weight: 700;
}

/* Last wala */
.card2 {
  position: relative;
  width: 428px;
  height: 253px;
  background-image: linear-gradient(-45deg, #549af5 0%, #cb5bf7 100% );
  border-radius: 10px;
  display: inline-flex;
  padding: 10px 30px;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  margin-top: 33px;
  margin-left: 10px;
}

.heading {
  font-size: 24px;
  font-weight: 700;
  color: #ffffff;
}

.para {
  text-align: center;
  color: #ffffff;
  opacity: 0.7;
  line-height: 1.4;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
  background-color: rgba(0, 0, 0, 0.6);
  transition: opacity 0.3s ease;
  pointer-events: none;
}

.card2:hover .overlay {
  opacity: 1;
  pointer-events: auto;
}

.card2 .card-btn {
  position: absolute;
  top: 50%;
  left: 50%;
  font-weight: 600;
  padding: 10px 20px;
  font-size: 16px;
  transform: translate(-50%, -50%);
  background-color: #ffffff;
  border-radius: 50px;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  z-index: 999;
  border: none;
  opacity: 0;
  scale: 0;
  transform-origin: 0 0;
  box-shadow: 0 0 10px 10px rgba(0, 0, 0, 0.15);
  transition: all 0.6s cubic-bezier(0.23, 1, 0.320, 1);
}

.card2:hover .card-btn {
  opacity: 1;
  scale: 1;
}

.card2 .card-btn:hover {
  box-shadow: 0 0 0px 5px rgba(0, 0, 0, 0.3);
}

.card2 .card-btn:active {
  scale: 0.95;
}

.overlay::after {
  content: "";
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%) scale(0);
  width: 100%;
  height: 100%;
  background-image: linear-gradient(-45deg, #416bb980 0%, #ff0f7b80 100% );
  transition: transform 0.5s ease;
}

.card2:hover .overlay::after {
  transform: translate(-50%, -50%) scale(2);
}

@media only screen and (max-width: 1023px) {
  .card {
    width: 98vw;
    height: 53vh;
    /* float: left; */
   justify-content: end;
   text-align: center;
  
  }
  .card3 {
    width: 98vw;
    height:47vh;
    /* float: left; */
   justify-content: end;
   text-align: center;
  
  }
  .card2 {
    width: 98vw;
    /* height:47vh;  */
    /* float: left; */
   /* justify-content: end;
   text-align: center; */
  
  }
  .form-box {
    max-width: 295px;
    background: #f1f7fe;
    overflow: hidden;
    border-radius: 32px;
    color: #010101;
    margin: auto;
}


}
.debit{
  /* background-color:  #406E95; */
}

.success-msg {
  margin: 10px 0;
  padding: 10px;
  border-radius: 3px 3px 3px 3px;
}
.success-msg {
  color: #270;
  background-color: #DFF2BF;
}

/* Footer */

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Open Sans', sans-serif;
}
.footer {
  display: table;
  /* position: relative; */
  /* position: absolute; */
  top: 54%;
  left: 50%;
  /* transform: translate(-56%, -43%); */
  max-width: 99vw;
  width: 98%;
  background: #10182F;
  border-radius: 6px;
}

.footer {
  /* float: right; */
  margin: 11px 18px 3px -1px;
  font-size: 13px;
  color: #636363;
  /* background-color: bisque; */
}

.footer .footer-row {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 3.5rem;
  padding: 60px;
}

.footer-row .footer-col h4 {
  color: #fff;
  font-size: 1.2rem;
  font-weight: 400;
}

.footer-col .links {
  margin-top: 20px;
}

.footer-col .links li {
  list-style: none;
  margin-bottom: 10px;
}

.footer-col .links li a {
  text-decoration: none;
  color: #bfbfbf;
}

.footer-col .links li a:hover {
  color: #fff;
}

.footer-col p {
  margin: 20px 0;
  color: #bfbfbf;
  max-width: 300px;
}

.footer-col form {
  display: flex;
  gap: 5px;
}

.footer-col input {
  height: 40px;
  border-radius: 6px;
  background: none;
  width: 100%;
  outline: none;
  border: 1px solid #7489C6 ;
  caret-color: #fff;
  color: #fff;
  padding-left: 10px;
}

.footer-col input::placeholder {
  color: #ccc;
}

 .footer-col form button {
  background: #fff;
  outline: none;
  border: none;
  padding: 10px 15px;
  border-radius: 6px;
  cursor: pointer;
  font-weight: 500;
  transition: 0.2s ease;
}

.footer-col form button:hover {
  background: #cecccc;
}

.footer-col .icons {
  display: flex;
  margin-top: 30px;
  gap: 30px;
  cursor: pointer;
}

.footer-col .icons i {
  color: #afb6c7;
}

.footer-col .icons i:hover  {
  color: #fff;
}

@media (max-width: 768px) {
  .footer {
    display: table;
    /* position: relative; */
    /* position: absolute; */
    top: 54%;
    left: 50%;
    transform: translate(5%, -1%);
    max-width: 100vw;
    width: 95%;
    background: #10182F;
    border-radius: 6px;
}
  .footer {
    /* position: relative; */
    width: 100%;
    border-radius: 0;
  }

  .footer .footer-row {
    padding: 25px;
    gap: 1rem;
  }

  .footer-col form {
    display: block;
  }

  .footer-col form :where(input, button) {
    width: 100%;
  }

  .footer-col form button {
    margin: 10px 0 0 0;
  }
}
</style>
</head>


<body>

  <nav>
  
    <div class="nav-bar">
      <i class='bx bx-menu sidebarOpen'></i>
      <span class="logo navLogo"><a href="#">MyBank</a></span>

      <div class="menu">
        <div class="logo-toggle">
          <span class="logo"><a href="#">MyBank</a></span>
          <i class='bx bx-x siderbarClose'></i>
        </div>

        <ul class="nav-links">
          <li><a href="#">Home</a></li>
          <li><a id="login-link" href="#">Login</a></li>
          <li><a href="#">Sign-Up</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Contact</a></li>
        </ul>

      </div>


      <div class="darkLight-searchBox">
        <div class="dark-light">
          <i class='bx bx-moon moon'></i>
          <i class='bx bx-sun sun'></i>
        </div>

        <div class="searchBox">
          <div class="searchToggle">
            <i class='bx bx-x cancel'></i>
            <i class='bx bx-search search'></i>
          </div>

          <div class="search-field">
            <input type="text" placeholder="Search...">
            <i class='bx bx-search'></i>
          </div>
        </div>
      </div>
    </div>
  </nav>


  <div class="slider-container">
    <div id="slider" class="slider">
      <img src="https://www.hdfcbank.com/content/api/contentstream-id/723fb80a-2dde-42a3-9793-7ae1be57c87f/405c9846-f7df-42f7-bf46-5175ed33ea61/Wholesale/Home/bank-guarantee-Homepage-banner.jpg" alt="Slide 2" class="slide" />
      <img src="https://www.axisbank.com/images/default-source/homebanner/axis-bank-amaze-digital-savings-account-748x301.jpg" alt="Slide 7" class="slide" />
      <img src="https://www.hdfcbank.com/content/api/contentstream-id/723fb80a-2dde-42a3-9793-7ae1be57c87f/87c3d6fc-07d8-4f4b-a1d4-f8c0498baad1/Common/Campaign/Images/2022/July-2022/07/Salary-07Jul-Banner-667x210.jpg" alt="Slide 3" class="slide" />
      <img src="https://www.axisbank.com/images/default-source/revamp_new/cards/cc-new/neo-credit-card-listing-banner-1920x630.jpg" alt="Slide 8" class="slide" />
      <img src="https://www.hdfcbank.com/content/api/contentstream-id/723fb80a-2dde-42a3-9793-7ae1be57c87f/e95b9f0c-0902-4abc-9d80-536627cc3bb5/Personal/Save/Accounts/Salary%20Account/Corporate%20Salary%20Accounts/Salary-Account-Category-Page-banner_Male_967-x-300-1.jpg" alt="Slide 4" class="slide" />
      <img src="https://cdn4.singleinterface.com/files/enterprise/coverphoto/5280/837x413-01-03-23-10-57-26.jpg" alt="Slide 10" class="slide" />
      <img src="https://eserve.fidelitybank.ng/OnlineAccount.Stage/Images/newdesign/banner1.jpg" alt="Slide 5" class="slide" />
      <img src="https://www.hdfcbank.com/content/api/contentstream-id/723fb80a-2dde-42a3-9793-7ae1be57c87f/c4a413bc-2202-4191-83ae-afcbb5d4987f/Personal/Save/Accounts/Salary%20Account/Salary-Account-Category-Page-banner_550-x-254.jpg" alt="Slide 1" class="slide" />
      <img src="https://www.hdfcbank.com/content/api/contentstream-id/723fb80a-2dde-42a3-9793-7ae1be57c87f/7702c223-d155-4349-8192-60f507c030e6/Common/Campaign/Images/2023/jully/12/4(1).jpg" alt="Slide 6" class="slide" />
      <img src="https://www.hdfcbank.com/content/api/contentstream-id/723fb80a-2dde-42a3-9793-7ae1be57c87f/f737debe-1b30-456f-9878-b9f10dd71a52/Common/Campaign/Images/2023/jully/12/Mobile%202%20(1).jpg" alt="Slide 9" class="slide" />
    </div>
    <div id="dots-container" class="dots-container"></div>
  </div>
  

  <!-- Cart -->

  <div class="block">
    <div class="debit">
      <div class="card">
        <div class="image">
          <img src="https://feeds.abplive.com/onecms/images/uploaded-images/2023/05/06/ea62bc19e9b2da98c84c50e3c256f9be1683380503589497_original.jpg" alt="">
        </div>
        <div class="content">
          <a href="#">
            <span class="title">
              DEBIT CARD
            </span>
          </a>

          <p class="desc">
            Transactions made with a debit card are deducted directly from the linked bank account</p>

          <a class="action" onclick="togglePopu()">
            Find out more
            <span aria-hidden="true">
              ->
            </span>
          </a>
        </div>
      </div>
    </div>

    <!-- Cart 2  -->
    <div class="card">
      <div class="image">
        <img src="https://akm-img-a-in.tosshub.com/businesstoday/images/story/202212/fd_3-sixteen_nine.jpg" alt="">
      </div>
      <div class="content">
        <a href="#">
          <span class="title">
            FIXED DEPOSITE
          </span>
        </a>

        <p class="desc">
          fixed deposits are a popular investment option for individuals seeking stable returns with low risk.</p>

        <a class="action" onclick="togglePopup()">
          Find out more
          <span aria-hidden="true">
            ->
          </span>
        </a>
      </div>
    </div>


    <!-- Cart 3  -->
    <div class="block3">
      <div class="card">
        <div class="image">
          <img src="https://images.news18.com/ibnlive/uploads/2021/12/credit-card-16418193843x2.jpg?impolicy=website&width=360&height=240" alt="">
        </div>
        <div class="content">
          <a href="#">
            <span class="title">
              CREADIT CARD
            </span>
          </a>

          <p class="desc">
            Credit cards offer a variety of benefits to cardholders, depending on the type of card and the issuer.
          </p>

          <a class="action" onclick="togglePopupp()">
            Find out more
            <span aria-hidden="true">
              ->
            </span>
          </a>
        </div>
      </div>
    </div>


    <!-- Pop-Up -->

  </div>
  <div class="popup-window" id="popupWindow">
    <h2>Benefits of Fixed Deposite</h2>
    <ul>
      <li> Stable Returns: Fixed deposits offer predictable returns as the interest rate is fixed at the time of
        investment.</li>
      <li> Financial Planning: Fixed deposits are useful for short-term and long-term financial planning, providing a
        guaranteed sum at maturity.</li>
      <li> Regular Income: For retirees or individuals seeking regular income, fixed deposits with periodic interest
        payouts can serve as a source of steady income.</li>
      <li> Diversification: Fixed deposits can be part of a diversified investment portfolio, providing stability
        alongside riskier investments like stocks or mutual funds</li>
    </ul>

    <button onclick="closePopup()">Close</button>
  </div>

  <!-- 2 -->

  <div class="popup-window" id="popupWindoww">
    <h2>Benefits of Credit Card</h2>
    <ul>
      <li>Convenience: Credit cards provide a convenient way to make purchases without carrying cash. They are widely
        accepted worldwide, both online and in physical stores.</li>
      <li>Rewards Programs: Many credit cards offer rewards programs where cardholders earn points, miles, or cashback
        on their purchases. These rewards can be redeemed for travel, merchandise, statement credits, or gift cards,
        providing tangible benefits for using the card</li>
      <li>Introductory Offers: Credit cards often come with introductory offers such as 0% APR on purchases or balance
        transfers for a certain period. This can help cardholders save money on interest charges, especially if they
        need to make large purchases or pay off existing debt</li>

    </ul>

    <button onclick="closePopupp()">Close</button>
  </div>

  <!-- 3 -->

  <div class="popup-window" id="popupWindo">
    <h2>Benefits of Debit Card</h2>
    <ul>
      <li> Immediate Access to Funds: Transactions made with a debit card are deducted directly from the linked bank
        account, offering immediate access to available funds.</li>
      <li> No Debt Accumulation: Unlike credit cards, debit cards do not allow users to borrow money or accumulate debt.
        Transactions are limited to the available balance in the linked account, promoting responsible spending.</li>
      <li> ATM Access: Debit cards can be used to withdraw cash from automated teller machines (ATMs), providing access
        to cash anytime, anywhere.</li>
      <li> Online and In-Store Purchases: Debit cards can be used for both online and in-store purchases, offering
        flexibility and versatility in payment options. </li>

    </ul>

    <button onclick="closePopu()">Close</button>
  </div>



  <!-- Other -->


  <div id="login-popup" class="login-popup">
    <div class="login-popup-content">
      <span class="close" onclick="closeLoginPopup()">&times;</span>
      <div class="form-box">
        <form class="form" action="login" >
          <span class="title">Login</span>
          <div class="form-container">
            <input type="email" class="input" name="email" placeholder="Email">
            <input type="password" class="input" name="pass" placeholder="Password">
          </div>
          <button>Login</button>
        </form>
        <div class="form-section">
          <p>don't have an account? <a href="">create</a> </p>
        </div>
      </div>
    </div>

  </div>
  <div class="pre">
    <img src="https://www.hdfcbank.com/content/api/contentstream-id/723fb80a-2dde-42a3-9793-7ae1be57c87f/4322d176-d38e-4176-ae90-7acb2ba3014e/Personal/Save/Accounts/Salary%20Account/Corporate%20Salary%20Account%20IBM/Hero%20Banner-Debit-Card-Banner_976X300-1%20%281%29.jpg" alt="">
  </div>

  <!-- Last One -->
  <div class="card3">
    <div class="card-image">
      <img src="https://img.etimg.com/thumb/width-1200,height-900,imgsize-20038,resizemode-75,msid-98652528/wealth/borrow/9-hard-lessons-for-home-loan-borrowers-from-the-sharp-interest-rate-hikes.jpg" alt="">
    </div>
    <p class="card-title">Home Loan</p>
    <p class="card-body">
      Home Loans offers a one stop solution to a home buyer. You can browse through our range of home loan products,
      Apply online!</p>
  </div>

  <div class="card3">
    <div class="card-image">
      <img src="https://kranthibank.in/wp-content/uploads/2021/04/Getting-a-Small-Business-Loan.jpg" alt="">
    </div>
    <p class="card-title">Business Loan</p>
    <p class="card-body">
      Apply for Business Loan online and get loan up to Rs. 55 lakh with minimal paperwork within 48 hours , starting
      from 12.75%* interest rate Apply online ! </p>
  </div>

  <div class="card3">
    <div class="card-image">
      <img src="https://etimg.etb2bimg.com/photo/87107428.cms" alt="">
    </div>
    <p class="card-title">Car Loan</p>
    <p class="card-body">
      Apply for New Car Loans at My Bank & get up to 100% financing for your car at attractive Interest Rates & flexible
      repayment tenures. Apply online Now !</p>
  </div>

  <div class="card3">
    <div class="card-image">
      <img src="https://www.axisbank.com/images/default-source/progress-with-us_new/personal-loan-for-medical-emergency.jpg" alt="">
    </div>
    <p class="card-title">Persnol Loan</p>
    <p class="card-body">
      Apply for personal loan online within minutes. Get a personal loan online at competitive interest rates starting
      at 10.75% with flexible repayment tenures</p>
  </div>

  <!-- THANK YOU-->



  <div class="card2">
    <p class="heading">Open Seving Account</p>
    <p class="para">You can now open a Savings Account of your choice instantly! </p>
    <div class="overlay"></div>
    <form action="new" >
    <button class="card-btn"  >Apply</button>
    </form>
  </div>

  <div class="card2">
    <p class="heading">Open Current Account</p>
    <p class="para">You can now open a Current Account of your choice instantly! </p>
    <div class="overlay"></div>
    <form action="new" >
    <button class="card-btn">Apply</button>
    </form>
  </div>

  <div class="card2">
    <p class="heading">Open Salary Account</p>
    <p class="para">You can now open a Salary Account of your choice instantly! </p>
    <div class="overlay"></div>
    <form action="new" >
    <button class="card-btn">Apply</button>
    </form>
  </div>



  <footer>
    <section class="footer">
      <div class="footer-row">
        <div class="footer-col">
          <h4>Info</h4>
          <ul class="links">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Compressions</a></li>
            <li><a href="#">Customers</a></li>
            <li><a href="#">Service</a></li>
            <li><a href="#">Collection</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>Explore</h4>
          <ul class="links">
            <li><a href="#">Free Designs</a></li>
            <li><a href="#">Latest Designs</a></li>
            <li><a href="#">Themes</a></li>
            <li><a href="#">Popular Designs</a></li>
            <li><a href="#">Art Skills</a></li>
            <li><a href="#">New Uploads</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>Legal</h4>
          <ul class="links">
            <li><a href="#">Customer Agreement</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">GDPR</a></li>
            <li><a href="#">Security</a></li>
            <li><a href="#">Testimonials</a></li>
            <li><a href="#">Media Kit</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>Newsletter</h4>
          <p>
            Subscribe to our newsletter for a weekly dose
            of news, updates, helpful tips, and
            exclusive offers.
          </p>
          <form action="#">
            <input type="text" placeholder="Your email" required>
            <button type="submit">SUBSCRIBE</button>
          </form>
          <div class="icons">
            <i class="fa-brands fa-facebook-f"></i>
            <i class="fa-brands fa-twitter"></i>
            <i class="fa-brands fa-linkedin"></i>
            <i class="fa-brands fa-github"></i>
          </div>
        </div>
      </div>
    </section>
  </footer>


  <script type="text/javascript">
  /**
   * 
   */
  const body = document.querySelector("body"),
        nav = document.querySelector("nav"),
        modeToggle = document.querySelector(".dark-light"),
        searchToggle = document.querySelector(".searchToggle"),
        sidebarOpen = document.querySelector(".sidebarOpen"),
        siderbarClose = document.querySelector(".siderbarClose");

        let getMode = localStorage.getItem("mode");
            if(getMode && getMode === "dark-mode"){
              body.classList.add("dark");
            }

  // js code to toggle dark and light mode
        modeToggle.addEventListener("click" , () =>{
          modeToggle.classList.toggle("active");
          body.classList.toggle("dark");

          // js code to keep user selected mode even page refresh or file reopen
          if(!body.classList.contains("dark")){
              localStorage.setItem("mode" , "light-mode");
          }else{
              localStorage.setItem("mode" , "dark-mode");
          }
        });

  // js code to toggle search box
          searchToggle.addEventListener("click" , () =>{
          searchToggle.classList.toggle("active");
        });
   
        sidebarOpen.addEventListener("click" , () =>{
          nav.classList.add("active");
      });
      
      body.addEventListener("click" , e =>{
          let clickedElm = e.target;
      
          if(!clickedElm.classList.contains("sidebarOpen") && !clickedElm.classList.contains("menu")){
              nav.classList.remove("active");
          }
      });


  // img slide
  document.addEventListener("DOMContentLoaded", function() {
    const slides = document.querySelectorAll('.slide');
    const dotsContainer = document.getElementById('dots-container');

    let currentSlide = 0;

    // Create dots for each slide
    slides.forEach((slide, index) => {
      const dot = document.createElement('span');
      dot.classList.add('dot');
      dot.setAttribute('data-slide', index);
      dotsContainer.appendChild(dot);
    });

    const dots = document.querySelectorAll('.dot');
    dots[currentSlide].classList.add('active');

    function showSlide(n) {
      slides.forEach(slide => slide.style.display = 'none');
      dots.forEach(dot => dot.classList.remove('active'));
      slides[n].style.display = 'block';
      dots[n].classList.add('active');
      currentSlide = n;
    }

    function nextSlide() {
      currentSlide = (currentSlide + 1) % slides.length;
      showSlide(currentSlide);
    }

    setInterval(nextSlide, 3000);

    dotsContainer.addEventListener('click', function(e) {
      if (e.target.classList.contains('dot')) {
        const slideIndex = parseInt(e.target.getAttribute('data-slide'));
        showSlide(slideIndex);
      }
    });
  });

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

  //   Debitcard
  function togglePopu() {
      var popup = document.getElementById("popupWindo");
      if (popup.style.display === "none") {
        popup.style.display = "block";
      } else {
        popup.style.display = "none";
      }
    }

    // Function to close the pop-up window
    function closePopu() {
      document.getElementById("popupWindo").style.display = "none";
    }

  // Login
  document.getElementById("login-link").addEventListener("click", function(event) {
    event.preventDefault();
    document.getElementById("login-popup").style.display = "block";
  });

  function closeLoginPopup() {
    document.getElementById("login-popup").style.display = "none";
  }

  function login() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Perform authentication (for demo purpose, just using hardcoded values)
    if (username === "user" && password === "password") {
      alert("Login successful!");
      closeLoginPopup();
    } else {
      alert("Invalid username or password.");
    }
  }

  
  </script>
</body>

</html>