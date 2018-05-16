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
<%!String uname;%>

<%	
	response.setContentType("text/html");
	try
	{
		Class.forName(JDBC_DRIVER);
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		stmt=conn.createStatement();
		String email=request.getParameter("email");
		
		Cookie[] c=request.getCookies();
		for(Cookie k:c)
		{
			if(k.getName().equals("username"))
			{
				uname=k.getValue();
				break;
			}
		} 
	
		String sql="update details set email_id='"+email+"' where username='"+uname+"';";
		int count = stmt.executeUpdate(sql);
		
		if(count>0)
		{
			Cookie ck=new Cookie("username",uname);
			response.addCookie(ck);
			
			out.print("true");
		}
		else
		{
			out.print("false");
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