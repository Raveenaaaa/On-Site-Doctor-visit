<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>

<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>

<html lang="">
<head>
<title>Dr.Visit</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <div class="fl_left">
      <ul>
        <li><i class="fa fa-phone"></i> +91 123456790</li>
        <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul>
        <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="all_login.html">Login</a></li>
        
      </ul>
    </div>
  </div>
</div>

<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Dr.Visit</a></h1>
      <p>Onsite Doctor Visit System</p>
    </div>
    <div id="quickinfo" class="fl_right">
      <ul class="nospace inline">
        <li><strong>Contact No:</strong><br>
          +91 123456790</li>
        
      </ul>
    </div>
  </header>
  <nav id="mainav" class="hoc clear"> 
     <ul class="clear">
      <li class="active"><a href="index.html">Home</a></li>
      <li><a class="drop" href="">Doctors</a>
        <ul>
          <li><a href="Dentists.html">Dentists</a></li>
          <li><a  href="Gynecologist.html">Gynecologist</a></li>
          
        </ul>
      </li>
      <li><a href="#">Book an appointment</a></li>
     
    </ul>
  </nav>
</div>

<div class="wrapper bgded overlay" style="background-image:url('images/mediback2.jpg');">


<br>
<br>
<br>
<br>
<br>
<br>

<%
String userid = request.getParameter("Id");
System.out.println(userid);
%>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
  
</div>




<div class="wrapper row4 bgded overlay" style="background-image:url('images/doc3.jpg');">
  <footer id="footer" class="hoc clear"> 
    
    <div class="one_third">
      <h6 class="heading">Dr.Visit</h6>
      <ul class="nospace btmspace-30 linklist contact">
        <li><i class="fa fa-map-marker"></i>
          <address>
          Mit Pune
          </address>
        </li>
        <li><i class="fa fa-phone"></i> +91 1234567890</li>
        
        <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
      </ul>
    </div>
   
  </footer>
</div>

</body>
</html>