<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,org.w3c.dom.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,javax.xml.parsers.*,javax.xml.transform.*,javax.xml.transform.dom.*,javax.xml.transform.stream.*"%>
<%! String name;%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>EZ-LEARN</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="icon" href="ez-learn.png" type="image/x-icon">
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="../layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.jcarousel.setup.js"></script>

	  <script>
function nedit()
{
		var name=document.rform.name.value;
		var zero=document.rform.name.value;
		var xmlhttp;
		
		if(window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();
		}
		else
		{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
		
			if(xmlhttp.readyState==4&&xmlhttp.status==200)
			{
				
				var returns=xmlhttp.responseText;
				
				returns = returns.trim();
				
				if(returns=="true")
				{
					document.getElementById("ajax").innerHTML ="Successfully edited";
				}
				else
				{
					document.getElementById("ajax").innerHTML="Enter a valid text";
				}
			}
		};
		var parameters="name="+name
		xmlhttp.open("POST","http://localhost:8080/elearn/pages/nedit.jsp",true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		xmlhttp.send(parameters);
	
}
function eedit()


{
		var email=document.rform.email.value;
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();
		}
		else
		{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			
			if(xmlhttp.readyState==4&&xmlhttp.status==200)
			{
				var returns=xmlhttp.responseText;
				
				returns = returns.trim();
				
				if(returns=="true")
				{
					document.getElementById("ajax").innerHTML ="Successfully edited";
				}
				else
				{
					document.getElementById("ajax").innerHTML="Enter a valid text";
				}
			}
		};
		var parameters="email="+email
		xmlhttp.open("POST","http://localhost:8080/elearn/pages/eedit.jsp",true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		xmlhttp.send(parameters);
	
}
function pedit()


{
		var pnum=document.rform.pnum.value;
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();
		}
		else
		{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
	
			if(xmlhttp.readyState==4&&xmlhttp.status==200)
			{
				var returns=xmlhttp.responseText;
				
				returns = returns.trim();
				
				if(returns=="true")
				{
					document.getElementById("ajax").innerHTML ="Successfully edited";
				}
				else
				{
					document.getElementById("ajax").innerHTML="Enter a valid text";
				}
			}
		};
		var parameters="pnum="+pnum
		xmlhttp.open("POST","http://localhost:8080/elearn/pages/pedit.jsp",true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		xmlhttp.send(parameters);
	
}
function uedit()


{
		var ulname=document.rform.uname.value;
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();
		}
		else
		{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			
			if(xmlhttp.readyState==4&&xmlhttp.status==200)
			{
				var returns=xmlhttp.responseText;
				
				returns = returns.trim();
				
				if(returns=="true")
				{
					document.getElementById("ajax").innerHTML ="Successfully edited";
				}
				else
				{
					document.getElementById("ajax").innerHTML="Enter a valid text";
				}
			}
		};
		var parameters="ulname="+ulname
		xmlhttp.open("POST","http://localhost:8080/elearn/pages/uedit.jsp",true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		xmlhttp.send(parameters);
	
}
function paedit()


{
		var password=document.rform.password.value;
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
			xmlhttp=new XMLHttpRequest();
		}
		else
		{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			
			if(xmlhttp.readyState==4&&xmlhttp.status==200)
			{
				var returns=xmlhttp.responseText;
				
				returns = returns.trim();
				
				if(returns=="true")
				{
					document.getElementById("ajax").innerHTML ="Successfully edited";
				}
				else
				{
					document.getElementById("ajax").innerHTML="Enter a valid text";
				}
			}
		};
		var parameters="password="+password
		xmlhttp.open("POST","http://localhost:8080/elearn/pages/paedit.jsp",true);
		xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		xmlhttp.send(parameters);
	
}
</script>
<style>
div.absolute {
    display: inline-block;
	float: left;
	  position: absolute;
    top: 70px;
    left: 0;
    width: 200px;
    height: 100px;
    

}
div.lute {
    display: inline-block;
	float: right;
	  position: absolute;
    top: 70px;
    right: 0;
    width: 200px;
    height: 100px;
    

}
</style>
</head>
<body id="top">
<!-- ####################################################################################################### -->
<div class="wrapper col1">

  <div id="header">
  <img src="ez-learn.png" alt="evolve"  width="40" height="35">
    <div id="logo">
      <h1> <a href="index.html">EZ-LEARN</a></h1>
      <p>&nbsp&nbsp&nbsp&nbspEach One Teach One</p>
	 
    </div>
	
    <div id="topnav">
      <ul>
        <li><a href="dashboard.jsp">Dashboard</a></li>
        <li  class="active"><a href="profile.jsp">Profile</a></li>
		<li><a href="feedback.jsp">Feedback</a></li>
		
        <li class="last"><a href="#">
		
		<%		
		Cookie[] c=request.getCookies();
		for(Cookie k:c)
		{
			if(k.getName().equals("username"))
			{
				name=k.getValue();
				break;
			}
		}  
		%>
		
		<%out.print(name);%>
		</a>
          <ul>
            <li><a href="profile.jsp">Profile</a></li>
            <li><a href="../index.html">Logout</a></li>
          </ul>
        </li>
		
       
		
	
		
		<!--<li class="last"><img src="images/evolve.png" alt="evolve"  width="200" height="40" ></li>-->
      </ul>
	  
    </div>
	
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div id="featured_content">
      <ul>
        <li><img src="../images/demo/physics.jpg" alt="" />
          <div class="floater">
            <h2>Physics</h2>
            <p>In physics, we want to explain why objects move around the way they do. However, it would be hard to explain motion if we didn't know how to describe motion.By the end you should have a nice understanding of introductory physics and the mathematical tools physicists use to describe and explain the universe. But no summary can describe all the interesting and powerful aspects of physics. The best way to find out is to jump in and see for yourself.</p>
            <p class="readmore"><a href="physics/physics.html" >Learn &raquo;</a></p>
          </div>
        </li>
        <li><img src="../images/demo/chemistry.jpg" alt="" />
          <div class="floater">
            <h2>Chemistry</h2>
            <p>In chemistry, we will often be thinking about the world on a much smaller scale than you can see with the naked eye. Here we will learn about atoms and elements, tiny particles that make up the world around us. What are atoms, and what kind of properties do they have? How do we weigh and count atoms? We will answer those questions in this subject</p>
            <p class="readmore"><a href="chemistry/chemistry.html">Learn &raquo;</a></p>
          </div>
        </li>
        <li><img src="../images/demo/maths.jpg" alt="" />
          <div class="floater">
            <h2>Maths</h2>
            <p>Mathematical thinking is not the same as doing mathematics. School math typically focuses on learning procedures to solve highly stereotyped problems. Professional mathematicians think a certain way to solve real problems. The key to success in school math is to learn to think inside-the-box. In contrast, a key feature of mathematical thinking is thinking outside-the-box - a valuable ability in today's world.</p>
            <p class="readmore"><a href="maths/maths.html">Learn&raquo;</a></p>
          </div>
        </li>
		
      </ul>
	  
    </div>
    <a href="javascript:void(0);" id="featured-item-prev"><img src="../layout/images/prev.png" alt="" /></a> <a href="javascript:void(0);" id="featured-item-next"><img src="../layout/images/next.png" alt="" /></a> 
	</div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="container">
    <div class="homepage">
	<h2>User Profile</h2>
      <br class="clear" />
	  <form method="post">

<table border="2">
<tr>
<td>email_id</td>
<td>phonenumber</td>
<td>name</td>
<td>username</td>
<td>password</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/project";
String username="root";
String password="ajay07";
String query="select * from details where username='"+name+"'";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tr><td><%=rs.getString("email_id") %></td>
<td><%=rs.getString("phonenumber") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("username") %></td>
<td><%=rs.getString("password") %></td></tr>

 <%

}
%>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</table>

</form>
	  
    </div>
	<h2>Edit profile</h2>
 <form name="rform"   method="post">
				<table>
					<tr>
						<td  bgcolor="#ffffff"><font color="black">* Name:</font><br><br></td>  
						<td bgcolor="#B2C629"><input type="text" name="name"><br><br><input type="button" value="Edit" onClick="nedit()"><br><br></td>
					</tr>
					
					
					<tr>
						<td bgcolor="#ffffff"><font color="black">* Email Id:</font><br><br></td>
						<td bgcolor="#B2C629"><input type="email" name="email"><br><br><input type="button" value="Edit" onClick="eedit()"><br><br></td>
					</tr>
					<tr>
						<td bgcolor="#ffffff"><font color="black">* Phone Number:</font><br><br></td>
						<td bgcolor="#B2C629"><input type="tel" name="pnum"><br><br><input type="button" value="Edit" onClick="pedit()"><br><br></td>
					</tr>
					<tr>
						<td bgcolor="#ffffff"><font color="black">* Username:</font><br><br></td>
						<td bgcolor="#B2C629"><input type="text" name="uname"><br><br><input type="button" value="Edit" onClick="uedit()"><br><br></td>
					</tr>
					<tr>
						<td bgcolor="#ffffff"><font color="black">* Password:</font><br><br></td>
						<td bgcolor="#B2C629"><input type="password" name="password"><br><br><input type="button" value="Edit" onClick="paedit()"><br><br></td>
					</tr>
					
				</table>
			
		
			</form>
        	<p id="ajax" style="text-align:center;">Edit</p>
			<p >Instructions:<br><br>
				&emsp;* - Enter the new updated value in textbox and click Edit<br>
				</p>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="footer">
    <div class="box1">
      <h2>What We Do</h2>
      <img class="imgl" src="../images/demo/imgl.gif" alt="" height="100" width="150"/>
      <p>We go for the latest commercial and open source tools to create quality content for everyone. We learn experientially, that is, we work on real problems with real methods, and seek to understand the foundations of those methods. A variety of cutting edge technologies are used in different parts of our products with the goal to deliver only the best.</p>
    </div>
    <div class="box contactdetails">
      <h2>Our Contact Details</h2>
      <ul>
        <li>EZ-LEARN</li>
        <li>3rd St, Sriram Colony, Abiramapuram</li>
        <li>Chennai</li>
        <li>600018</li>
        <li>Tel: (070) 412 3456</li>
        <li>Fax:+31 6 20 87 45 18.</li>
        <li>Email: info@ezlearn.com</li>
        <li class="last">LinkedIn: <a href="#">EZ-LEARN</a></li>
      </ul>
    </div>
    <div class="box flickrbox">
      <h2>Snapshots</h2>
      <div class="wrap">
        <div class="fix"></div>
        <div class="flickr_badge_image" id="flickr_badge_image1"><a href="#"><img src="../images/demo/c1.jpg" alt="" height="80" width="80" /></a></div>
        <div class="flickr_badge_image" id="flickr_badge_image2"><a href="#"><img src="../images/demo/c2.jpg" alt="" height="80" width="80"/></a></div>
        <div class="flickr_badge_image" id="flickr_badge_image3"><a href="#"><img src="../images/demo/c3.jpg" alt="" height="80" width="80"/></a></div>
        <div class="flickr_badge_image" id="flickr_badge_image4"><a href="#"><img src="../images/demo/c4.jpg" alt="" height="80" width="80"/></a></div>
        <div class="flickr_badge_image" id="flickr_badge_image5"><a href="#"><img src="../images/demo/c5.jpg" alt="" height="80" width="80"/></a></div>
        <div class="flickr_badge_image" id="flickr_badge_image6"><a href="#"><img src="../images/demo/c6.jpg" alt="" height="80" width="80"/></a></div>
        <div class="fix"></div>
      </div> <li class="last"><a href="#">EZ-LEARN</a></li> 
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">EZ-LEARN</a></p>
    <p class="fl_right">Developed by Ajay kumar</a></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>