<%@ page import="java.io.*,java.util.*,org.w3c.dom.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,javax.xml.parsers.*,javax.xml.transform.*,javax.xml.transform.dom.*,javax.xml.transform.stream.*"%>
<%!
	String name;
	int i;
%>
<%
	try
	{
		//response.setContentType("text/html");
		DocumentBuilderFactory df=DocumentBuilderFactory.newInstance();
		DocumentBuilder d=df.newDocumentBuilder();
		Document doc=d.parse("tomcat/webapps/elearn/pages/maths/comment.xml");
		Element root=doc.getDocumentElement();
		NodeList game=root.getElementsByTagName("sub");
		for(i=0;i<game.getLength();i++)
		{
			Element gchild=(Element)game.item(i);
			if(gchild.getElementsByTagName("name").item(0).getTextContent().equals(request.getParameter("sub")))
				break;
		}
		Element comments=doc.createElement("comments");
		Element user=doc.createElement("user");
		Cookie[] c=request.getCookies();
		for(Cookie k:c)
		{
			if(k.getName().equals("username"))
			{
				name=k.getValue();
				break;
			}
		}
		Text tuser=doc.createTextNode(name);
		user.appendChild(tuser);
		Element comment=doc.createElement("comment");
		Text tcomment=doc.createTextNode(request.getParameter("comment"));
		comment.appendChild(tcomment);
		comments.appendChild(user);
		comments.appendChild(comment);
		Element add=(Element)game.item(i);
		add.appendChild(comments);
		root.appendChild(add);
		TransformerFactory tf=TransformerFactory.newInstance();
		Transformer t=tf.newTransformer();
		DOMSource src=new DOMSource(doc);
		StreamResult res=new StreamResult(new File("tomcat/webapps/elearn/pages/maths/comment.xml"));
		t.transform(src,res);
		out.print("true");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>