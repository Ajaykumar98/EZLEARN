<%@ page import="javax.servlet.http.*,javax.servlet.*,javax.xml.parsers.*,org.w3c.dom.*"%>

			<%
				try
				{
					DocumentBuilderFactory dFactory=DocumentBuilderFactory.newInstance();
					DocumentBuilder dBuilder=dFactory.newDocumentBuilder();
					Document doc=dBuilder.parse("tomcat/webapps/elearn/pages/request.xml");
					NodeList r=doc.getElementsByTagName("request");
			%>
<%! String name;%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>EZ-LEARN</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="icon" href="ez-learn.png" type="image/x-icon">
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
<script src = "https://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.jcarousel.setup.js"></script>
<script>
  function request()
{
	if(document.rqform.rgame.value!="")
	{
		var rgame=document.rqform.rgame.value;
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
			//alert("Hi");
			//alert(xmlhttp.readyState);
			//alert(xmlhttp.status);
			if(xmlhttp.readyState==4&&xmlhttp.status==200)
			{
				document.getElementById("ajax").innerHTML=xmlhttp.responseText;
			}
		};
		xmlhttp.open("GET","http://localhost:8080/elearn/pages/request.jsp?rgame="+rgame,true);
		//xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		xmlhttp.send();
	}
	else
	{
		alert("Please enter a value Feedback");
		document.rqform.rgame.focus();
	}
}
      </script>
	  <style>
	  table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
	  </style>
	  <script src="redirectjs.js">
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
        <li   class="active"><a href="receive.jsp">Home</a></li>	
        <li class="last"><a href="#">admin
		</a>
          <ul>
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
            <p>Mathematical thinking is not the same as doing mathematics. School math typically focuses on learning procedures to solve highly stereotyped problems. Professional mathematicians think a certain way to solve real problems. The key to success in school math is to learn to think inside-the-box. In contrast, a key feature of mathematical thinking is thinking outside-the-box – a valuable ability in today’s world.</p>
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
		<h2 style="text-align:center;">Received Feedbacks</h2>
			<table>
				<tr>
					<th>Username</th>
					<th>Feedback</th>
				</tr>
			<%
					for(int i=0;i<r.getLength();i++)
					{
						Element req=(Element)r.item(i);
			%>
				<tr>
					<td>
						<%=req.getElementsByTagName("name").item(0).getTextContent()%>
					</td>
					
					
					<td>
						<%=req.getElementsByTagName("requested_feed").item(0).getTextContent()%>
					</td>
				</tr>
				
			<%
					}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			%>
			</table>
			<p>&nbsp;</p>
           	<p>&nbsp;</p>
      
    </div>
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