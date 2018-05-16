function validatepwd()
{
	var p=document.rform.password.value;
	if(p=="")
	{
		alert("Please enter your password");
		document.rform.password.focus();
		return false;
	}		
	if(document.rform.uname.value==p)
	{
		alert("Your User name and password is same.Please enter correct password");
		document.rform.password.focus();
		return false;
	}
	re=/[0-9]/;
	if(!re.test(p))
	{
		alert("Please enter a valid password which contain atleast one number character");
		document.rform.password.focus();	
		return false;
	}
	re=/[A-Z]/;
	if(!re.test(p))
	{
		alert("Please enter a valid password which contain atleast one uppercase character");
		document.rform.password.focus();	
		return false;
	}
	if(p.length<6)
	{
		alert("Please enter a valid password which contain minimum 6 character");
		document.rform.password.focus();
		return false;
	}
	return true;
}
function validate()
{
	if(document.rform.uname.value=="")
	{
		alert("Please enter your username!");
		document.rform.uname.focus();
		return false;
	}
	else
	{
		var result=validatepwd();
		if(result==false)
		{
			return false;
		}
	}
	return(true);
}