
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>

<html lang="">
<head>
<style type="text/css">

body
{
	background-color:#2196F3;
	background-image: url("images/mediback2.jpg"); 
}

td {
  width: 20px;
  padding: 15px;
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

String admin = request.getParameter("adminid");
String password = request.getParameter("adminpassword");
//out.print(admin);
//out.print(password);
session.setAttribute("admin",admin);
if((admin).equals("admin")&&(password).equals("admin"))
{
	System.out.print("done");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?useSSL=false","root","root@1234");
	 
	if(!conn.isClosed())
	{
		
		Statement s=conn.createStatement();
		Statement s1=conn.createStatement();

		ResultSet rs=s.executeQuery("select dr_details.mob_no,dr_name,gender,age,email,edu_degree,speciality,work_exp,address,if_verified from dr_details,location_details,edu_info  where dr_details.mob_no=location_details.mob_no and location_details.mob_no=edu_info.mob_no;");

		while(rs.next())
		{
			//out.print(rs.getString(1));
			//out.print(rs.getString(2));
		 %>
		 <form action="verify.jsp?Id=<%=rs.getInt(1) %>"  method="post">
		 <table>
		  <tr>
		 <td>Mobile</td> <td>Name</td> <td>Gender</td> <td>Age</td><td>Email</td><td>Degree</td>
		  <td>Speciality</td>  <td>work experience</td><td>Address</td> 
		  <td>if verified </td>
		    	
		       
		  </tr>
		 <tr>
		 <td><%=rs.getInt(1)%></td> <td><%=rs.getString(2) %></td> <td width="50px"><%=rs.getString(3) %></td> <td><%=rs.getInt(4) %></td>
		  <td><%=rs.getString(5)%></td>  <td><%=rs.getString(6)%></td>  <td><%=rs.getString(7) %></td>  <td><%=rs.getString(8)%></td>  <td><%=rs.getString(9)%></td> 
		  <td><%=rs.getString(10)%> </td>
		    	
		     <td>verified?	  	
		   <select name="verify">
            <option value="Yes">YES </option>
			<option value="No">NO</option>
			</select> </td>
			<td><input type=submit value="submit"></td>   
		  </tr>
		 </table>
		 </form>
	   <%	
		 
		    }
		
		conn.close();
	}
}
else
{
	out.print("wrong password");
}
%>
                   
    </div>                
    </div>
    </section>
    </div>
    
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