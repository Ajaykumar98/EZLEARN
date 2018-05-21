import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class AdminLogin extends HttpServlet
{

    /**
     *
     * @param req
     * @param res
     * @throws ServletException
     * @throws IOException
     */
    @Override
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		final String JDBC_DRIVER="com.mysql.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost/project";
		final String USER="root";
		final String PASS="ajay07";
		Connection conn=null;
		Statement stmt=null;
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			stmt=conn.createStatement();
			String auname=req.getParameter("auname");
			String apassword=req.getParameter("apassword");
			String sql;
			sql="select username,password from admin;";
			ResultSet rs=stmt.executeQuery(sql);
                        //out.print("true");
			if(rs.next())
			{
				if(rs.getString("username").equals(auname)&&rs.getString("password").equals(apassword))
				{
					out.print("true");
				}
				else
				{
					out.print("false");
				}
			}
			rs.close();
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
	}
}