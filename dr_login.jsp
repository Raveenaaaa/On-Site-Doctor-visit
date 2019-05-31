<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>

<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<% 

String userid = request.getParameter("txtemail");
String password = request.getParameter("password");
//out.print(username);
//out.print(password);
//int u=Integer.parseInt(username);
         
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?useSSL=false","root","root@1234");

if(!conn.isClosed())
{
	
	Statement s=conn.createStatement();
	ResultSet rs=s.executeQuery("select * from dr_details");
	
	while(rs.next())
	{
		
		//out.print(rs.getString(1));
		//out.print(rs.getString(2));
		if((rs.getString(3)).equals(userid)&&(rs.getString(6)).equals(password))
		{
			
			session.setAttribute("name",userid);
			HttpSession oldSession = request.getSession(false);
            if (oldSession != null) {
                oldSession.invalidate();
            }
          
         
		}
		else
		{
			out.print("wrong password");
		}
	}
	
	conn.close();
} %>


</body>
</html>