<%@ page import="java.io.*,java.util.*,org.w3c.dom.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,javax.xml.parsers.*,javax.xml.transform.*,javax.xml.transform.dom.*,javax.xml.transform.stream.*"%>
<%!
	String name;
%>
<%
	try
	{
		//response.setContentType("text/html");
		DocumentBuilderFactory df=DocumentBuilderFactory.newInstance();
		DocumentBuilder d=df.newDocumentBuilder();
		Document doc=d.parse("tomcat/webapps/elearn/pages/request.xml");
		Element root=doc.getDocumentElement();
		Element child=doc.createElement("request");
		Element subchild1=doc.createElement("name");
		Cookie[] c=request.getCookies();
		for(Cookie k:c)
		{
			if(k.getName().equals("username"))
			{
				name=k.getValue();
				break;
			}
		}
		Text txt1=doc.createTextNode(name);
		subchild1.appendChild(txt1);
		Element subchild2=doc.createElement("requested_feed");
		Text txt2=doc.createTextNode(request.getParameter("rgame"));
		subchild2.appendChild(txt2);
		child.appendChild(subchild1);
		child.appendChild(subchild2);
		root.appendChild(child);
		TransformerFactory tf=TransformerFactory.newInstance();
		Transformer t=tf.newTransformer();
		DOMSource src=new DOMSource(doc);
		StreamResult res=new StreamResult(new File("tomcat/webapps/elearn/pages/request.xml"));
		t.transform(src,res);
		out.print("Request Successful");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>