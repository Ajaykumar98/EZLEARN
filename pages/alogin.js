function avalidatepwd()
{
	var p=document.aform.apassword.value;
	if(p=="")
	{
		alert("Please enter Admin password");
		document.aform.apassword.focus();
		return false;
	}		
	if(document.aform.auname.value==p)
	{
		alert("Admin User name and password is same.Please enter correct password");
		document.aform.apassword.focus();
		return false;
	}
	re=/[0-9]/;
	if(!re.test(p))
	{
		alert("Please enter a valid password which contain atleast one number character");
		document.aform.apassword.focus();	
		return false;
	}
	re=/[A-Z]/;
	if(!re.test(p))
	{
		alert("Please enter a valid password which contain atleast one uppercase character");
		document.aform.apassword.focus();	
		return false;
	}
	if(p.length<6)
	{
		alert("Please enter a valid password which contain minimum 6 character");
		document.aform.apassword.focus();
		return false;
	}
	return true;
}
function avalidate()
{
	if(document.aform.auname.value=="")
	{
		alert("Please enter Admin username!");
		document.aform.auname.focus();
		return false;
	}
	else
	{
		var result=avalidatepwd();
		if(result==false)
		{
			return false;
		}
	}
	return(true);
}