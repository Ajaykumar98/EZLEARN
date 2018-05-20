function comment()
{
		//alert("hi");
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
				var i,index;
				var xmldoc=xmlhttp.responseXML;
				var table="<tr><th>Discussions</th></tr>";
				var x=xmldoc.getElementsByTagName("sub");
				//alert(document.getElementById("game").innerHTML);
				for(i=0;i<x.length;i++)
				{
					if(x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue==document.getElementById("sub").innerHTML)
					{
						index=i;
						break;
					}
				}
				var y=x[index].getElementsByTagName("comments");
				for(i=0;i<y.length;i++)
				{
					table+="<tr><td><b>"+y[i].getElementsByTagName("user")[0].childNodes[0].nodeValue+"</b></td></tr><tr><td>&emsp;"+y[i].getElementsByTagName("comment")[0].childNodes[0].nodeValue+"</td></tr>";
				}
				document.getElementById("bu").innerHTML="";
				document.getElementById("ajax").innerHTML=table;
			}
		};
		xmlhttp.open("GET","comment.xml",false);
		//xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		xmlhttp.send();
}
