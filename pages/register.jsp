<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%!
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost/project";
	final String USER="root";
	final String PASS="ajay07";
	Connection conn=null;
	Statement stmt=null;
%>
<%	
	response.setContentType("text/html");
	try
	{
		Class.forName(JDBC_DRIVER);
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		stmt=conn.createStatement();
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String pnum=request.getParameter("pnum");
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
		String zero="0";
		String n="none";
		String sql="insert into details(name,DOB,age,sex,email_id,phonenumber,username,password,phy,che,mat,phyb,cheb,matb) VALUES('"+name+"','"+dob+"','"+age+"','"+gender+"','"+email+"','"+pnum+"','"+uname+"','"+password+"','"+zero+"','"+zero+"','"+zero+"','"+n+"','"+n+"','"+n+"');";
		int rs=stmt.executeUpdate(sql);
		if(rs>0)
		{
			out.print("<h3 style='text-align:center;'>You have successfully registered!</h3><br><h3 style='text-align:center;'>Login into your account to view the required Course details</h3>");
		}
		else
		{
			out.print("<h3>Unsuccessful registration</h3>");
		}
		stmt.close();
		conn.close();
	}
	catch(SQLException se)
	{
		out.println(se);
	}
	catch(Exception e)
	{
		out.println(e);
	}
	finally
	{
		try	
		{
			if(stmt!=null)
				stmt.close();
		}
		catch(SQLException se2)
		{
			out.println(se2);
		}
		try
		{
			if(conn!=null)
				conn.close();
		}
		catch(SQLException se)
		{
			out.println(se);
		}
	}
%>