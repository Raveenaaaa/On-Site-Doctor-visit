
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>

<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.DriverManager"%><!DOCTYPE html>

<html lang="">
<head>
<style type="text/css">

body
{
	background-color:#2196F3;
	background-image: url("images/mediback2.jpg"); 
}

</style>
<title>Dr.Visit</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
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

<div class="container">
        
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    
       <%            
         String docid=request.getParameter("Id");
        //int docid=Integer.parseInt(d);
         System.out.println(docid);
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?useSSL=false","root","root@1234");

		Statement s=conn.createStatement();
		ResultSet rs1=s.executeQuery("select * from dr_details,dr_timings,location_details,edu_info  where dr_details.mob_no='"+docid+"' and dr_details.mob_no=dr_timings.mob_no and dr_timings.mob_no=location_details.mob_no and location_details.mob_no=edu_info.mob_no;;");
		int i=0;
	
		while(rs1.next())
		{
		   i++;
		
	%>
                    <div id="wrapper1">
                        <div id="login" class="animate form">
                            
							 <div class="container mt-5">
    <div class="card">
      <div class="card-header bgwhite border-white">

        <div class="row">
          <div class="col-12 col-lg-8">
            <h1>Profile</h1>            
          </div>
           
        </div>
        
      </div>
    
    

      <div class="card-block m-4 text-dark">
        <div class="row ">
          <div class="col-12 col-lg-4">
            <div class="m-3">
          <div class="col-12 text-right">
            
          </div>
          <div class="col-12 ">
            <br>
          </div>
            <img id="img2" class="inspace-10 borderedbox" src="images/mediback13.jpg" height="400"  alt=""> </div>
          </div>
		  <br>
		  
		  <div class="col-12 col-lg-4 text-right">
        <a href="patient-appoinment.html" class="btn bgcolor"><span class="textcolor">Book Appointment</span> </a>
          </div>
		  <br>
          <div class="col-12 col-lg-8">
            <div class="text-right ">
              <h1 class="text-dark">Dr.<%=rs1.getString(2)%> </h1>
              <h2></h2>
            </div>            
          </div> 
          </div>
          <div class="col-6">
              <h4>Email Id:<%=rs1.getString(3)%> <span ><b></b></span></h4>
              <h4>Mobile No.:<%=rs1.getInt(1)%><span><b></b></span></h4>
              
          </div>
  
          <hr size="30">
         
        </div><!--1st row end-->
        <hr class="bg-primary">

        <div class="row">
          <div class="col-12 mb-3">
          <h4 class="text-success">location info.:<%=rs1.getString(14)%></h4>
          </div>
          
          <div class="col-lg-4 col-12">
              <h4>Pincode : <%=rs1.getInt(13)%><span></span></h4>
          </div>

        </div> <!--2nd row end-->
        <hr class="bg-primary">


         <div class="row">
          <div class="col-12 mb-3">
          <h4 class="text-success">Educational Info.:</h4>
          </div>
          <div class="col-lg-4 col-12">
              <h4>Education : <%=rs1.getString(16)%><span></span></h4>
          </div>
          <div class="col-lg-4 col-12">
              <h4>Speciality :<%=rs1.getString(17)%> <span></span></h4>
          </div>
          <div class="col-lg-4 col-12">
              <h4>Work Experience :<%=rs1.getString(18)%> <span></span></h4>
          </div>
          
          
        </div> <!--3rd row end-->

        


         <hr class="bg-primary">

        

        <hr class="bg-primary">

        <div class="row">
          <div class="col-12 mb-3">
          <h4 class="text-success">Fees info.</h4>
          </div>
         
          <div class="col-lg-4 col-12">
              <h4>Fee :<%=rs1.getInt(10)%> <span></span></h4>
          </div>
          
          <div class="col-12">
          </div>
          
        </div> <!--4rth row end-->

        <hr class="bg-primary">

        <div class="row">
          <div class="col-lg-6 col-12 mb-3">
          <h4 class="text-success">Daily Schedule.</h4>
          
          <div class="col-12 ">
            <br>
          </div>

          <div class="row">
              <div class="col-12 mb-3">
                   <h4 class="text-dark"><b class="family">Regular Hospital Time</b> <span class="text-danger"><b>(Monday to Saterday)</b></span></h4>
              </div>
              <div class="col-lg-6 col-12">
          <h4 class="family2">Opening time :<%=rs1.getString(8)%> <span></span></h4>
              </div>
              <div class="col-lg-6 col-12">
                  <h4 class="family2">Closing time :<%=rs1.getString(9)%> <span></span></h4>
              </div>
              <div class="col-12">
                <hr class="bg-warning">
              </div>
             
              
            
          </div>

          </div>
          
          <div class="col-lg-6 col-12 mb-3">
             <h4 class="text-success">If sunday availabile?<span class="text-danger"><%=rs1.getString(11)%></span></h4>
  
            </div>           
         
          
        </div> <!--5th row end-->

        

        

      </div><!--card-block end-->     
    </div><!--card end-->
    </div><!--container end-->
  
 
 
</div>
							
                        </div>

                    
						
                    </div>
                </div>  
            </section>
        </div>
 <% }%>
		 <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
   <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>



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