   <%@page import="sun.security.util.Password"%>
<%@page import="java.net.PasswordAuthentication"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>

<%@page import="javax.sql.ConnectionEvent"%>
<%@page import="java.sql.DriverManager"%>
<%
		
		String uname = request.getParameter("txtname");
		String email_id = request.getParameter("txtemail");
		String uid1=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		if(gender != null) 
		  {
            if(gender.equals("radio1"))
            {
                 gender="m";
            }
            else 
            {
                gender="f";
            }
		  }  
		int age=Integer.parseInt(request.getParameter("txtage"));
		String city=request.getParameter("txtcity");
		String state=request.getParameter("txtstate");
		int pincode=Integer.parseInt(request.getParameter("pincode"));
		StringBuffer address = new StringBuffer(request.getParameter("txtaddress"));
  		String password=request.getParameter("txtpassword1");
        
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?useSSL=false","root","root@1234");
		Statement stmt=conn.createStatement();

		
		//int rs3=stmt.executeUpdate("delete from student where sid=2");
		int rs1=stmt.executeUpdate("insert into user(mob_no,uname,email,age,gender,address,password) values ('"+Integer.parseInt(uid1)+"','"+uname+"','"+email_id+"','"+age+"','"+gender+"','"+address+"','"+password+"')");
		int rs2=stmt.executeUpdate("insert into area_details(pincode,city,state) values ('"+pincode+"','"+city+"','"+state+"')");

		

  /*PreparedStatement pstmt=conn.prepareStatement("insert into student(sid,sname) VALUE (?,?)");
  pstmt.setInt(1,'2');
  pstmt.setString(2,sname);
*/
  ResultSet r=stmt.executeQuery("select * from user");
	while(r.next())
	{
		System.out.println(r.getInt(1));
		System.out.println(r.getString(2));
		System.out.println(r.getString(3));
		System.out.println(r.getInt(4));
		System.out.println(r.getString(5));
		System.out.println(r.getString(6));
		System.out.println(r.getString(7));

		
	}
	 ResultSet r1=stmt.executeQuery("select * from area_details");
		while(r1.next())
		{
			System.out.println(r.getInt(1));
			System.out.println(r.getString(2));
			System.out.println(r.getString(3));
		
		}
 %>

</body>
</html>