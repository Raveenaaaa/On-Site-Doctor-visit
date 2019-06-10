<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import=" java.net.URLEncoder"%>
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
String dr=request.getParameter("Id");
String mobiles=request.getParameter("mId");
String authkey = "280060AWZFUsbnaCH5cfa89aa";
//Multiple mobiles numbers separated by comma

//Sender ID,While using route4 sender id should be 6 characters long.
String senderId = "DRVIST";
//Your message to send, Add URL encoding here.
String message = "You have booked an appointment with Dr."+dr+".The doctor will reach to you in estimated half an hour from now. Thank you.";
//define route
String route="4";
//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;
//encoding message
String encoded_message=URLEncoder.encode(message);
String mainUrl="https://control.msg91.com/api/sendhttp.php?";//Your sms gateway provider API
//Prepare parameter string
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("authkey="+authkey);
sbPostData.append("&mobiles="+mobiles);
sbPostData.append("&message="+encoded_message);
sbPostData.append("&route="+route);
sbPostData.append("&sender="+senderId);
//final string
mainUrl = sbPostData.toString();
try
{
//prepare connection
myURL = new URL(mainUrl);
myURLConnection = myURL.openConnection();
myURLConnection.connect();
System.out.println(myURL);
reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
String success="Your message sent sucessfully";
System.out.println(success);
//finally close connection
reader.close();

%>
<h2 class="fa fa-map-marker">You have successfully booked an appointment with Dr.<%=dr%></h2>
<% 
}
catch (IOException e)
{
e.printStackTrace();
}
%>
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