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
		String uid1=request.getParameter("mobilenum");
		String gender=request.getParameter("rdogender");
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
		String degree=request.getParameter("txteducation");
		String speciality=request.getParameter("txtspeciality");
		String workexp=request.getParameter("txtwork_experience");
		String ot=request.getParameter("opentime");
		String ct=request.getParameter("closetime");
		int fees=Integer.parseInt(request.getParameter(""));
		int pincode=Integer.parseInt(request.getParameter("pincodenum"));
		String sunday=request.getParameter("rdosunday");
		StringBuffer address = new StringBuffer(request.getParameter("txtaddress"));
  		String password=request.getParameter("txtpassword1");
        
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?useSSL=false","root","root@1234");
		Statement stmt=conn.createStatement();

		
		//int rs3=stmt.executeUpdate("delete from student where sid=2");
		int rs1=stmt.executeUpdate("insert into dr_details(mob_no,dr_name,email,age,gender,password) values ('"+Integer.parseInt(uid1)+"','"+uname+"','"+email_id+"','"+age+"','"+gender+"','"+password+"')");
		int rs2=stmt.executeUpdate("insert into edu_info(mob_no,edu_degree,speciality,work_exp) values ('"+Integer.parseInt(uid1)+"','"+degree+"','"+speciality+"','"+workexp+"')");
		int rs3=stmt.executeUpdate("insert into dr_timings(mob_no,open_time,close_time,fees,sundays) values ('"+Integer.parseInt(uid1)+"','"+ot+"','"+ct+"','"+fees+"','"+sunday+"')");
		int rs4=stmt.executeUpdate("insert into location_details(mob_no,pincode,address) values ('"+Integer.parseInt(uid1)+"','"+pincode+"','"+address+"')");

		

  /*PreparedStatement pstmt=conn.prepareStatement("insert into student(sid,sname) VALUE (?,?)");
  pstmt.setInt(1,'2');
  pstmt.setString(2,sname);
*/
 
 %>

</body>
</html>